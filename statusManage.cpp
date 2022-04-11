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

        while((!cin) || (jobNumber > 1000))
        {
            // user  didn't input a number
            cin.clear(); // reset failbit
            cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); //skip bad input
            if (!cin){
                cout << "It is not a proper number. Please enter another number: ";
            }else {
                cout << "---- Exceed number of job ----" << endl;
                cout << "It is not a proper number. Please enter another number: ";

            }
            // next, request user reinput
            cin >> jobNumber;
        }
    return jobNumber;
}

//commands
    const std::string statusRunning("Running");
    const std::string statusPaused("Paused");
    const std::string statusAborted("Aborted");

std::string manageStatus(std::string word)
{
    std::string status = "";
    if (word == "start"){
        status = statusRunning;
    }
    if (word == "pause"){
        status = statusPaused;
    }
    if (word == "abort"){
        status = statusAborted;
    }
    if (word == "resume"){
        status = statusRunning;
    }
    return status;
}

bool taskOne(int number) {
    // counting even numbers
    if (number%2 == 0){
        return true;
    }else{
        return false;
    }
}

std::string checkTask(int number) {
    string taskName = "";
    if (!(taskOne(number))){
        taskName = "Task 1 is running odd";
    }else {
        taskName = "Task 2 is running even";
    }
    return taskName;
}