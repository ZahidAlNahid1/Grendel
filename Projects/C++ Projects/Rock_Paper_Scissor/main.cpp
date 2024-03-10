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

    cout << "\n\t\t Enter R/r for ROCK, p/P for PAPER, and s/S for SCISSOR\n\t\t\t\t\t";

    while(1)
    {
        cin >> playermove;
        playermove = tolower(playermove);

        if(playermove == 'p' || playermove == 'r' || playermove == 's')
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

    if(result == 0)
    {
        cout << "\n\t\t\tCongratulations! Player won the "
                "game!\n";
    }

    else { 
        cout << "\n\t\t\tOh! Computer won the game!\n"; 
    } 
  
    cout << "\t\t\tYour Move: " << playermove << endl; 
    cout << "\t\t\tComputer's Move: " << computermove << endl; 
  
    return 0;

}

char getcomputermove()
{
    int move;

    srand(time(NULL));
    move = rand()%3;

    if(move == 0)
    {
        return 'r';
    }

    else if (move == 1)
    {
        return 'p';
    }
    
    else
    return 's';
}

int getresult(char playermove, char computermove)
{
    if (playermove == computermove) { 
        return 0; 
    } 
  
    // condition for win and loss according to game rule 
    if (playermove == 's' && computermove == 'p') 
    { 
        return 1; 
    }

    if (playermove == 's' && computermove == 'r') 
    { 
        return -1; 
    }

    if (playermove == 'p' && computermove == 'r') 
    { 
        return 1; 
    }

    if (playermove == 'p' && computermove == 's') 
    { 
        return -1; 
    } 

    if (playermove == 'r' && computermove == 'p') 
    { 
        return -1; 
    }

    if (playermove == 'r' && computermove == 's') 
    { 
        return 1; 
    } 
      
    return 0;
}