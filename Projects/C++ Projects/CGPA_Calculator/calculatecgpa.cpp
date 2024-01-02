#include <iostream>
#include <array>

using namespace std;

void calculatecgpa()
{
    int num_semesters;

    system("cls");

    cout << "CGPA CALCULATION" << endl;
    cout << "Total SEMESTERS" << endl;
    cin >> num_semesters;
    cout << endl;

    float semester_gpa[num_semesters];

    for(int i = 0; i < num_semesters; i++)
    {
        cout << "Semester " << i + 1 << "GPA: " << endl;
        cin >> semester_gpa[i];
        cout << "---------------------------------------" << endl;
    }

    float total_cgpa = 0;

    for(int i = 0; i < num_semesters; i++)
    {
        total_cgpa = total_cgpa + semester_gpa[i];
    }

    cout << ". Total GPA: " << total_cgpa/num_semesters  << "." << endl;
}