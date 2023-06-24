/*  Section 7
    Challenge
    
    Write a C++ program as follows:
    
    Declare 2 empty vectors of integers named
    vector1 and vector 2, respectively.
    
    Add 10 and 20 to vector1 dynamically using push_back
    Display the elements in vector1 using the at() method as well as its size using the size() method
    
    Add 100 and 200 to vector2 dynamically using push_back
    Display the elements in vector2 using the at() method as well as its size using the size() method

    Declare an empty 2D vector called vector_2d
    Remember, that a 2D vector is a vector of vector<int>
    
    Add vector1 to vector_2d dynamically using push_back
    Add vector2 to vector_2d dynamically using push_back
    
    Display the elements in vector_2d using the at() method
    
    Change vector1.at(0) to 1000
    
    Display the elements in vector_2d again using the at() method
    
    Display the elements in vector1 
    
    What did you expect? Did you get what you expected? What do you think happended?
*/
    
#include <iostream>
#include <vector>

using namespace std;

int main() {
    
    // your solution goes here
    vector<int> vector1;
    vector<int> vector2;

    vector1.push_back(10);
    vector1.push_back(20);

    int size1 = vector1.size();

    cout << "Vector 1: ";
    for(int i = 0; i < size1; i++)
        {
            cout << vector1.at(i) << " ";
        }
    cout << endl;

    vector2.push_back(100);
    vector2.push_back(200);

    int size2 = vector2.size();

    cout << "Vector 2: ";
    for(int i = 0; i < size2; i++)
        {
            cout << vector2.at(i) << " ";
        }
    cout << endl;
    vector<vector<int>> vector_2d;

    vector_2d.push_back(vector1);
    vector_2d.push_back(vector2);

    cout << "Vector 2D: ";
    for(int i = 0; i < size1; i++)
    {
        for(int j = 0; j < size2; j++)
        {
            cout << vector_2d.at(i).at(j) << " ";
        }
    }
    cout << endl;

    vector1.at(0) = 1000;

     cout << "Vector 2D: ";
    for(int i = 0; i < size1; i++)
    {
        for(int j = 0; j < size2; j++)
        {
            cout << vector_2d.at(i).at(j) << " ";
        }
    }
    cout << endl;

    cout << "Vector 1: ";
    for(int i = 0; i < size1; i++)
        {
            cout << vector1.at(i) << " ";
        }
    cout << endl;

    cout << endl;
    return 0;
}

