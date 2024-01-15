#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

char getcomputermove();
int getresult(char playermove, char computermove);

int main()
{
    char playermove;

    cout << "\n\n\n\t\t Welcome to the Rock Paper Scissor Game" << endl;

    cout << "\n\t\t Enter R/r for ROCK, p for PAPER, and s for SCISSOR\n\t\t\t\t\t";

    while(1)
    {
        cin >> playermove;
        if(playermove == 'p' || playermove == 'P' || playermove == 'r' || playermove == 'R' || playermove == 's' || playermove == 'S')
        {
            break;
        }

        else
        {
            cout << "\t\t\tInvalid Player Move!!! Please Try Again." << endl;
        }
    }

    char computermove = getcomputermove();

    int result = getresult(playermove, computermove);
}