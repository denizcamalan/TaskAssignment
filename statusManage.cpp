#include <iostream>
#include <sstream>
#include <iterator>
#include "statusManage.hpp"

using namespace std;

int getNumber(){
    cout << "---- Relimetrics Test -----" << endl;
    int jobNumber;  //number of tasks
    cout << "Enter number of jobs: ";
    cin >> jobNumber;
        while(!cin)
        {
            // user  didn't input a number
            cin.clear(); // reset failbit
            cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); //skip bad input
            cout << "It is not a proper number. Please enter another number: ";
            // next, request user reinput
            cin >> jobNumber;
        }
    return jobNumber;
}

//commands
    const std::string status_running("Running");
    const std::string status_paused("Paused");
    const std::string status_aborted("Aborted");

std::string manageStatus(std::string word)
{
    std::string status = "";
    if (word == "start"){
        status = status_running;
    }
    if (word == "pause"){
        status = status_paused;
    }
    if (word == "abort"){
        status = status_aborted;
    }
    if (word == "resume"){
        status = status_running;
    }
    return status;
}