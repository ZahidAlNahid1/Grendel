# power_plant_regression.py
# ------------------------------------------------------------
# Combined Cycle Power Plant regression: compare & tune models,
# evaluate on a holdout test set, and export presentation-ready plots.
#
# Expected CSV:
#  - Abbrev: AT (Temperature), V (Exhaust Vacuum), AP (Ambient Pressure),
#            RH (Relative Humidity), PE (target)
#  - OR Long: Temperature, Exhaust Vacuum, Ambient Pressure, Relative Humidity, PE
#
# Outputs (saved to current folder):
#  - model_metrics.csv
#  - cv_results.csv
#  - pred_vs_actual.png
#  - residuals_hist.png
#  - feature_importance.png
# ------------------------------------------------------------

import os
import math
import warnings
warnings.filterwarnings("ignore")

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

from sklearn.model_selection import train_test_split, KFold, cross_val_score, RandomizedSearchCV
from sklearn.pipeline import Pipeline
from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score

from sklearn.linear_model import LinearRegression, Ridge
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor

# --------------------
# Config
# --------------------
CSV_PATH = "power_plant.csv"   # change this if your file has a different path/name
TEST_SIZE = 0.2
RANDOM_STATE = 42
N_FOLDS = 5
N_JOBS = -1
N_ITER_RF = 25
N_ITER_GB = 25

# --------------------
# Load & harmonize columns
# --------------------
if not os.path.exists(CSV_PATH):
    raise FileNotFoundError(
        f"Could not find '{CSV_PATH}'. Place your dataset next to this script or update CSV_PATH."
    )

df = pd.read_csv(CSV_PATH)

# Try to normalize column names to: ['AT','V','AP','RH','PE']
col_map = {
    'Temperature': 'AT',
    'Exhaust Vacuum': 'V',
    'Ambient Pressure': 'AP',
    'Relative Humidity': 'RH',
    # sometimes folks use slightly different spacing/case:
    'Exhaust vacuum': 'V',
    'Ambient pressure': 'AP',
    'Relative humidity': 'RH',
}

df = df.rename(columns={c: col_map.get(c, c) for c in df.columns})

required_cols_variants = [
    {'AT','V','AP','RH','PE'},
    {'Temperature','Exhaust Vacuum','Ambient Pressure','Relative Humidity','PE'}
]
if not any(variant.issubset(set(df.columns)) for variant in required_cols_variants):
    raise ValueError(
        "CSV must contain either columns {AT,V,AP,RH,PE} or "
        "{Temperature, Exhaust Vacuum, Ambient Pressure, Relative Humidity, PE}."
    )

# If long names survived, rename them now:
if {'Temperature','Exhaust Vacuum','Ambient Pressure','Relative Humidity'}.issubset(df.columns):
    df = df.rename(columns={
        'Temperature':'AT',
        'Exhaust Vacuum':'V',
        'Ambient Pressure':'AP',
        'Relative Humidity':'RH'
    })

# Final check
features = ['AT','V','AP','RH']
target = 'PE'
df = df[features + [target]].copy()

# --------------------
# Train / test split
# --------------------
X = df[features]
y = df[target]

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=TEST_SIZE, random_state=RANDOM_STATE
)

# --------------------
# CV Strategy
# --------------------
cv = KFold(n_splits=N_FOLDS, shuffle=True, random_state=RANDOM_STATE)
scoring = 'neg_root_mean_squared_error'  # RMSE (negative for sklearn convention)

# --------------------
# Define candidate models
# --------------------
# 1) Linear Regression (with scaling)
lin_pipe = Pipeline(steps=[
    ('scaler', StandardScaler()),
    ('model', LinearRegression())
])

# 2) Ridge Regression (regularized linear model)
ridge_pipe = Pipeline(steps=[
    ('scaler', StandardScaler()),
    ('model', Ridge(random_state=RANDOM_STATE))
])

# 3) Random Forest (tuned)
rf = RandomForestRegressor(random_state=RANDOM_STATE, n_jobs=N_JOBS)
rf_param_dist = {
    'n_estimators': np.arange(150, 801, 25),
    'max_depth': [None] + list(np.arange(3, 21)),
    'min_samples_split': np.arange(2, 11),
    'min_samples_leaf': np.arange(1, 6),
    'max_features': ['auto', 'sqrt', 'log2', 0.6, 0.8, 1.0]
}
rf_search = RandomizedSearchCV(
    rf,
    rf_param_dist,
    n_iter=N_ITER_RF,
    scoring=scoring,
    cv=cv,
    random_state=RANDOM_STATE,
    n_jobs=N_JOBS,
    verbose=0
)

# 4) Gradient Boosting (tuned)
gb = GradientBoostingRegressor(random_state=RANDOM_STATE)
gb_param_dist = {
    'n_estimators': np.arange(100, 801, 50),
    'learning_rate': np.linspace(0.01, 0.2, 20),
    'max_depth': np.arange(2, 9),
    'subsample': np.linspace(0.7, 1.0, 7)
}
gb_search = RandomizedSearchCV(
    gb,
    gb_param_dist,
    n_iter=N_ITER_GB,
    scoring=scoring,
    cv=cv,
    random_state=RANDOM_STATE,
    n_jobs=N_JOBS,
    verbose=0
)

candidates = {
    'LinearRegression': lin_pipe,
    'Ridge': ridge_pipe,
    'RandomForest_RandSearch': rf_search,
    'GradientBoosting_RandSearch': gb_search
}

# --------------------
# Cross-validate each candidate on TRAIN ONLY
# --------------------
rows = []
for name, model in candidates.items():
    try:
        scores = cross_val_score(model, X_train, y_train, scoring=scoring, cv=cv, n_jobs=N_JOBS)
        rmse_scores = -scores
        rows.append({
            'model': name,
            'cv_rmse_mean': rmse_scores.mean(),
            'cv_rmse_std': rmse_scores.std()
        })
    except Exception as e:
        rows.append({
            'model': name,
            'cv_rmse_mean': np.nan,
            'cv_rmse_std': np.nan,
            'error': str(e)
        })

cv_table = pd.DataFrame(rows).sort_values('cv_rmse_mean', na_position='last').reset_index(drop=True)
cv_table.to_csv('cv_results.csv', index=False)

print("\n=== Cross-validation (5-fold) RMSE on training set ===")
print(cv_table)

# --------------------
# Fit/tune models on TRAIN, pick best via CV mean RMSE
# --------------------
fitted_models = {}
for name, model in candidates.items():
    model.fit(X_train, y_train)
    fitted_models[name] = model

# Use CV table to choose the best (lowest mean RMSE)
best_name = cv_table.iloc[0]['model']
best_model = fitted_models[best_name]

# Handle best_estimator_ when using *SearchCV
if hasattr(best_model, 'best_estimator_'):
    final_model = best_model.best_estimator_
else:
    final_model = best_model

print(f"\nBest model by CV: {best_name}")
if hasattr(best_model, 'best_params_'):
    print("Best params:", best_model.best_params_)

# --------------------
# Evaluate on TEST set
# --------------------
y_pred = final_model.predict(X_test)

rmse = math.sqrt(mean_squared_error(y_test, y_pred))
mae = mean_absolute_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

metrics_df = pd.DataFrame([{
    'best_model': best_name,
    'test_RMSE': rmse,
    'test_MAE': mae,
    'test_R2': r2
}])
metrics_df.to_csv('model_metrics.csv', index=False)

print("\n=== Test set performance ===")
print(metrics_df)

# --------------------
# Plots (no seaborn, one chart per figure, no explicit colors)
# --------------------

# 1) Predicted vs Actual
plt.figure()
plt.scatter(y_test, y_pred, alpha=0.6)
plt.xlabel("Actual PE (MW)")
plt.ylabel("Predicted PE (MW)")
plt.title("Predicted vs Actual (Test Set)")
# 45-degree line
lims = [min(y_test.min(), y_pred.min()), max(y_test.max(), y_pred.max())]
plt.plot(lims, lims)
plt.tight_layout()
plt.savefig("pred_vs_actual.png", dpi=160)
plt.close()

# 2) Residuals histogram
residuals = y_test - y_pred
plt.figure()
plt.hist(residuals, bins=40)
plt.xlabel("Residual (Actual - Predicted) MW")
plt.ylabel("Frequency")
plt.title("Residuals (Test Set)")
plt.tight_layout()
plt.savefig("residuals_hist.png", dpi=160)
plt.close()

# 3) Feature importance or coefficients
plt.figure()
labels = features
values = None
title = None

# Try tree-based feature_importances_
if hasattr(final_model, 'feature_importances_'):
    values = final_model.feature_importances_
    title = "Feature Importance (Tree-based Best Model)"
# If pipeline with linear model, plot absolute coefficients
elif isinstance(final_model, Pipeline):
    # Try to find the final estimator
    last = final_model.steps[-1][1]
    if hasattr(last, 'coef_'):
        # account for scaler: coefficients already aligned to scaled inputs
        values = np.abs(last.coef_)
        title = "Absolute Coefficients (Linear Best Model)"

if values is not None:
    idx = np.argsort(values)[::-1]
    sorted_vals = values[idx]
    sorted_labels = np.array(labels)[idx]
    plt.bar(range(len(sorted_vals)), sorted_vals)
    plt.xticks(range(len(sorted_vals)), sorted_labels, rotation=20)
    plt.ylabel("Importance" if "Importance" in title else "|Coefficient|")
    plt.title(title)
    plt.tight_layout()
    plt.savefig("feature_importance.png", dpi=160)
else:
    plt.text(0.1, 0.5, "Best model has no native importance/coefs to plot.")
    plt.axis('off')
    plt.tight_layout()
    plt.savefig("feature_importance.png", dpi=160)
plt.close()

# --------------------
# Console talking points for your video
# --------------------
print("\n=== Presentation talking points ===")
print(f"- Task: Supervised regression to predict PE from AT, V, AP, RH.")
print(f"- Validation: {N_FOLDS}-fold CV on training data; compared Linear, Ridge, tuned RF, tuned GB.")
print(f"- Best model by CV: {best_name}")
print(f"- Test RMSE: {rmse:.3f} MW | MAE: {mae:.3f} MW | R²: {r2:.4f}")
print("- Show pred_vs_actual.png (tight cloud along the 45° line is good).")
print("- Show residuals_hist.png (centered near 0 indicates low bias).")
print("- Show feature_importance.png to discuss which features matter most.")