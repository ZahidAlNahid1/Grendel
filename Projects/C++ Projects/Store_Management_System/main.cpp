#include <conio.h>
#include <fstream>
#include <iostream>
#include <stdlib.h>
#include <string>
 
using namespace std;
 
// class dept contains main function to perform add,update,
// view and delete operations
class dept {
public:
    // control panel function is called which displays the
    // options available to
    // the user
    void control_panel();
    void add_item();
    void display_item();
    void check_item();
    void update_item();
    void delete_item();
};
 
// control panel
void dept ::control_panel()
{
    // using the color combination 0A
    system("Color 0A");
    system("cls");
    cout << "**********************************************"
            "**********************************";
    cout << "\n\n\t\t\tDepartment Store Management System";
    cout << "\n\n\t\t\t\t  Control Panel\n";
    cout << "\n********************************************"
            "************************************\n";
    cout << "\n\n 1. Add New Item";
 
    cout << "\n 2. Display Items";
    cout << "\n 3. Check Specific Item";
 
    cout << "\n 4. Update Item";
 
    cout << "\n 5. Delete Item";
    cout << "\n 6. Exit";
}
 
// add item
void dept ::add_item()
{
    system("cls");
    // using the color combination 0A
    system("Color 0A");
    fstream file;
    int no_item, Item_Id;
    string itm_name;
    string c_name;
    cout << "\n\n\t\t\t\t Add New Item: \n";
    cout << "----------------------------------------------"
            "----------------------------\n";
    cout << " Item Code : ";
    cin >> Item_Id;
    cout << "----------------------------------------------"
            "----------------------------\n";
    cout << "\n\n\t\t\t Item Name: ";
    cin >> itm_name;
    cout << "\n\n Company Name: ";
    cin >> c_name;
    cout << "\n\n\t\t\t No. Of Item: ";
    cin >> no_item;
    file.open("D://item.txt", ios::out | ios::app);
    file << " " << Item_Id << " " << itm_name << " "
         << c_name << " " << no_item << "\n";
    cout << "=============================================="
            "============================"
         << endl;
    file.close();
}
 
// display item
void dept ::display_item()
{
    system("cls");
 
    // using the color combination 0A
    system("Color 0A");
    fstream file;
    int no_item, Item_code;
    string itm_name;
    string c_name;
    file.open("D://item.txt", ios::in);
    if (!file) {
        cout << "File Opening Error....";
    }
    else {
        cout << "------------------------------------------"
                "-----------------\n";
        cout << " Item Code          Item           "
                "Company    No. of Item\n";
        cout << "------------------------------------------"
                "-----------------"
             << endl;
        file >> Item_code >> itm_name >> c_name
            >> no_item; // To fetch data from file
        while (!file.eof()) {
            cout << "   " << Item_code << "              "
                 << itm_name << "           " << c_name
                 << "\t          " << no_item
                 << "\n"; // to print fetched data from file
            // cout<<"\t"<<no_item<<"\n";
            file >> Item_code >> itm_name >> c_name
                >> no_item; // again fetch next data from
                            // the file and the loop
                            // continues till eof
        }
        cout << "=========================================="
                "================="
             << endl;
 
        file.close();
    }
}
 
// check specific item
void dept ::check_item()
{
    system("cls");
    // using the color combination 0A
    system("Color 0A");
    fstream file;
    int count = 0;
    int Item_code;
    int no_item;
    string itm_name, c_name;
    cout << "\n\n\t\t\t\t Check Specific Product\n";
    cout << "----------------------------------------------"
            "----------------------------------\n";
    file.open("D://item.txt", ios ::in);
    if (!file) {
        cout << "File Opening Error....";
    }
    else {
        int It_code;
        cout << "\n\n Item Code: ";
        cin >> It_code;
        cout << "\n----------------------------------------"
                "----------------------------------\n";
        // again fetch next data from the
        // file and the loop continues till
        // eof
        file >> Item_code >> itm_name >> c_name >> no_item;
        while (!file.eof()) {
            if (It_code == Item_code) {
                system("cls");
                cout
                    << "\n\n\t\t\t\tCheck Specific Product";
                cout << "\n\n Item Code : " << Item_code;
                cout << "\n\n\t\t\tItem Name : "
                     << itm_name;
                cout << "\n\n Company : " << c_name;
                cout << "\n\n\t\t\tNo. of Item : "
                     << no_item;
                count++;
                break;
            }
            // again fetch next data from
            // the file and the loop
            // continues till eof
            file >> Item_code >> itm_name >> c_name
                >> no_item;
        }
        file.close();
        if (count == 0) {
            cout << "Item Not Found....";
        }
    }
}
// update item
void dept ::update_item()
{
    system("cls");
    // using the color combination 0A
 
    system("Color 0A");
    fstream file, file1;
    int no_copy, no_co, count = 0;
    string itm_name, b_na, a_name, a_na, newitm_idd,
        newitm_id;
    cout << "\n\n\t\t\t\tUpdate Item Record\n";
    cout << "----------------------------------------------"
            "----------------------------\n";
    file1.open("D://book1.txt", ios::app | ios::out);
    file.open("D://item.txt", ios::in);
    if (!file)
        cout << "\n\n File Opening Error...";
    else {
        cout << "\n\n Item Code : ";
        cin >> newitm_id;
        cout << "\n----------------------------------------"
                "----------------------------------\n";
        file >> newitm_idd >> itm_name >> a_name >> no_copy;
        while (!file.eof()) {
            if (newitm_id == newitm_idd) {
                system("cls");
 
                cout << "\n\n\t\t\t\tUpdate Book Record";
                cout << "\n\n New Item Name : ";
 
                cin >> b_na;
                cout << "\n\n\t\t\tCompany Name : ";
 
                cin >> a_na;
                cout << "\n\n No. of Items : ";
 
                cin >> no_co;
                file1 << " " << newitm_id << " " << b_na
                      << " " << a_na << " " << no_co
                      << "\n";
                count++;
            }
            else
                file1 << " " << newitm_idd << " "
                      << itm_name << " " << a_name << " "
                      << no_copy << "\n";
 
            file >> newitm_idd >> itm_name >> a_name
                >> no_copy;
        }
        if (count == 0)
            cout << "\n\n Item Code Not Found...";
    }
 
    file.close();
    file1.close();
 
    remove("D://item.txt");
    rename("D://book1.txt", "D://item.txt");
}
 
// delete item
void dept ::delete_item()
{
    system("cls");
    // using the color combination 0A
 
    system("Color 0A");
    fstream file, file1;
    int no_copy, count = 0;
 
    string newitm_id, newitm_idd, itm_name, a_name;
 
    cout << "\n\n\t\t\t\tDelete Item Record";
    cout << "\n--------------------------------------------"
            "------------------------------\n";
    file1.open("D://book1.txt", ios::app | ios::out);
    file.open("D://item.txt", ios::in);
 
    if (!file)
        cout << "\n\n File Opening Error...";
    else {
        cout << "\n\n Item Code : ";
        cin >> newitm_id;
 
        cout << "\n----------------------------------------"
                "----------------------------------\n";
        file >> newitm_idd >> itm_name >> a_name >> no_copy;
 
        while (!file.eof()) {
            if (newitm_id == newitm_idd) {
                system("cls");
                cout << "\n\n\t\t\t\tDelete Item Record";
                cout << "\n\n One Item is Deleted "
                        "Successfully...";
                count++;
            }
            else
                file1 << " " << newitm_idd << " "
                      << itm_name << " " << a_name << " "
                      << no_copy << "\n";
            file >> newitm_idd >> itm_name >> a_name
                >> no_copy;
        }
 
        if (count == 0)
            cout << "\n\n Book ID Not Found...";
    }
    file.close();
    file1.close();
    remove("D://item.txt");
    rename("D://temp.txt", "D://item.txt");
}
 
// main function
int main()
{
    dept d;
p:
    d.control_panel();
    int choice;
 
    char x;
    cout << "\n\n Your Choice : ";
    cin >> choice;
 
    switch (choice) {
    case 1:
        do {
            d.add_item();
            cout << "Do You Want To Add Another Item (y/n) "
                    ": ";
            cin >> x;
        } while (x == 'y');
        break;
    case 2:
        d.display_item();
        break;
    case 3:
        d.check_item();
        break;
    case 4:
        d.update_item();
        break;
    case 5:
        d.delete_item();
        break;
    case 6:
        exit(0);
        break;
 
    default:
        cout << "\n\n Invalid Value....Please Try again";
    }
 
    cout << "\n";
    getch();
 
    goto p;
}