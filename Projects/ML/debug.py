import os

CSV_PATH = "power_plant.csv"

print("File exists:", os.path.exists(CSV_PATH))
print("File size:", os.path.getsize(CSV_PATH), "bytes")

with open(CSV_PATH, "r", encoding="utf-8", errors="ignore") as f:
    for i in range(10):
        line = f.readline()
        if not line:
            break
        print(repr(line))