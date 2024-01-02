#include <iostream>
#include <array>

using namespace std;

void calculategpa()
{
    int num_subjects;

    system("cls");

    cout << "GPA CALCULATION" << endl;
    cout << "Total subjects" << endl;
    cin >> num_subjects;
    cout << endl;

    string subject_name[num_subjects];
    float subject_credit[num_subjects];
    float subject_gpa[num_subjects];

    for(int i = 0; i < num_subjects; i++)
    {
        cout << "Subject Name" << endl;
        cin >> subject_name[i];
        cout << "Subject Credit" << endl;
        cin >> subject_credit[i];
        cout <<  "GPA" << endl;
        cin >> subject_gpa[i];
        cout << "---------------------------------------" << endl;
    }

    float total_credit = 0;
    float total_gpa = 0;

    for(int i = 0; i < num_subjects; i++)
    {
        total_credit = total_credit + subject_credit[i];
        total_gpa = total_gpa + subject_gpa[i];
    }

    cout << "\n\n\nTotal Credit" << total_credit << " .Total GPA" << total_gpa/num_subjects  << " ." << endl;
    
}