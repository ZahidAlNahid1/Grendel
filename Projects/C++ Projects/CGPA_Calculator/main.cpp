#include <iostream>
#include "calculategpa.cpp"
#include "calculatecgpa.cpp"
#include "method.cpp"


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
