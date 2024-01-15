#include <iostream>
#include <array>

void calculategpa();
void calculatecgpa();
void method();

using namespace std;

int main()
{
    system("cls");
    int choice;
    cout << "Please Select the which operation you need" << endl;
    cout << "1. Calculate GPA" << endl;
    cout << "2. Calculate CGPA" << endl;
    cout << "3. CGPA and GPA Method used" << endl;
    cout << "4. Exit" << endl;

    cin >> choice;

    switch (choice)
    {
    case 1:
        calculategpa();
        break;
    
    case 2:
        calculatecgpa();
        break;
    
    case 3:
        method();
        break;

    case 4:
        exit(EXIT_SUCCESS);
        break;

    default:
        cout << "You have entered the wrong input. Try again!" << endl;
    }
}

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

    cout << "\n\n\nTotal Credit: " << total_credit << ". Total GPA: " << total_gpa/num_subjects  << "." << endl;

    sub:
    int inmenu;
    cout<<"\n\n\n1. Calculate Again"<<endl;
    cout<<"2. Go Back to Main Menu"<<endl;
    cout<<"3. Exit This App \n\n"<<endl;
    cout<<"Your Input: "<<endl;
    cin>>inmenu;

    switch(inmenu)
    {
        case 1:
                calculategpa();
                break;
        case 2:
                main();
                break;
        case 3:
                exit(EXIT_SUCCESS);

        default:
              cout<<"\n\nYou have Entered Wrong Input!Please Choose Again!"<<endl;
              goto sub;
    }

}

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

    cout << "CGPA: " << total_cgpa/num_semesters  << "." << endl;

    sub:
    int inmenu;
    cout<<"\n\n\n1. Calculate Again"<<endl;
    cout<<"2. Go Back to Main Menu"<<endl;
    cout<<"3. Exit This App \n\n"<<endl;
    cout<<"Your Input: "<<endl;
    cin>>inmenu;

    switch(inmenu)
    {
        case 1:
                calculatecgpa();
                break;
        case 2:
                main();
                break;
        case 3:
                exit(EXIT_SUCCESS);

        default:
              cout<<"\n\nYou have Entered Wrong Input!Please Choose Again!"<<endl;
              goto sub;
    }
}

void method()
{
    cout << "FOR GPA" << endl;
    cout << "GPA = TOTAL POINTS OF SUBJECTS / NUMBER OF SUBJECTS" << endl;
    cout << "FOR CGPA" << endl;
    cout << "CGPA = TOTAL GPA OF SEMESTERS / NUMBER OF SEMESTERS" << endl;

    sub:
    int inmenu;
    cout<<"1. Go Back to Main Menu"<<endl;
    cout<<"2. Exit This App \n\n"<<endl;
    cout<<"Your Input: "<<endl;
    cin>>inmenu;

    switch(inmenu)
    {
        case 1:
                main();
                break;
        case 3:
                exit(EXIT_SUCCESS);

        default:
              cout<<"\n\nYou have Entered Wrong Input!Please Choose Again!"<<endl;
              goto sub;
    }
}