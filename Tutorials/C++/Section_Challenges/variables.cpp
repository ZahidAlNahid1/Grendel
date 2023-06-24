// Section 6
// Challenge

/*
    Frank's Carpet Cleaning Service
    Charges:
        $25 per small room
        $35 per large room
    Sales Tax rate is 6%
    Estimates are valid for 30 days

    Prompt the user for the number of small and large rooms they would
    like cleaned and provide an estimate such as:

    Estimate for carpet cleaning service
    Number of small rooms: 3
    Number of large rooms: 1
    Price per small room: $25
    Price per large room: $35
    cost: $110
    Tax: $6.6
    ==================================================================
    Total estimate: $116.6
    This estimate is valid for 30 days
*/

#include <iostream>

using namespace std;

int main()
{
    int small_rooms = 0;
    int large_rooms = 0;
    int price_small = 25;
    int price_large = 35;
    int cost = 0;
    const int tax_per = 6;
    const int day = 30;
    double tax = 0.00;
    double total_estimate = 0.00;

    cout << "How many small rooms would you like cleaned? ";
    cin >> small_rooms;
    cout << "How many large rooms would you like cleaned? ";
    cin >> large_rooms;

    cout << "Estimate for carpet cleaning service" << endl;
    cout << "Number of small rooms: " << small_rooms << endl;
    cout << "Number of large rooms: " << large_rooms  << endl;
    cout << "Price per small room: $" << price_small << endl;
    cout << "Price per large room: $" << price_large << endl;

    cost = (small_rooms*price_small) + (large_rooms*price_large);

    cout << "Cost: $" << cost << endl;

    tax = (cost*6.00)/100.00;

    cout << "Tax: $" << tax << endl;
    cout << "===============================================" << endl;
    total_estimate = cost + tax;
    cout << "Total estimate: $" << total_estimate << endl;
    cout << "This estimate is valid for " << day << " days" << endl;

}
