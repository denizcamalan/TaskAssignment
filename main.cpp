#include <iostream>
#include <iterator>
#include <map>
#include <sstream>
#include "statusManage.hpp"

using namespace std;

int main()
{
    // defining N and mapping
    
    int N = getNumber();
    int idNumber; // job id

    // map, id and status template

    std::map<int, std::string> idTask;
    int id = 1;
    for (int i=1 ; i <= N ; i++){
        idTask[id] = "Idle";
        id++;
    }

    std::string word[2];
    int i = 0;
    while (word[0] != "quit"){

        
        cout << "" << endl;
        if (i >= 1){ // except first loop
        cout << "Please enter your command: ";
        }
        
        //Enter command
        std::string command;
        getline(cin, command); // ex: start 2
        
            // spliting words
            int j = 0;
            stringstream stringIn(command);
            while (stringIn.good() && j < 2){
                stringIn >> word[j];
                ++j;
            }

        if ((word[0] == "start") ||  (word[0] == "pause") || (word[0] == "abort") || (word[0] == "resume"))
        {   
            if (i <= N+1){

                // geting id from the command
                idNumber = std::stoi(word[1]);

                if (idNumber > N ){
                cout << "Exceed number of ID (must be btw 1 - number of job). Please enter another ID: " << endl;
                continue;
                }

                // status
                std::string status;
                status = manageStatus(word[0]);
                
                // giving tasks of job
                if ((idTask[idNumber] == "Aborted") && (word[0] == "start") ){
                    idTask[idNumber] = status;
                    continue;
                }else if ((idTask[idNumber] == "Paused") && (word[0] == "resume")){
                    idTask[idNumber] = status;
                    continue;
                }else if ((idTask[idNumber] == "Running") && ((word[0] == "pause") || (word[0] == "abort"))){
                    idTask[idNumber] = status;
                    continue;
                }else if ((idTask[idNumber] == "Idle") && (word[0] == "start") ){
                    idTask[idNumber] = status;
                    continue;
                }else{
                    cout << "---- No job were assigned ----" << endl;
                    continue;
                }
            }else{

                cout << "---- Out of jobs ----" << endl;
            }
        }else if (word[0] == ""){
            i++;
        }else if ((word[0] == "status") ){
            
            //geting the status

            std::map<int,string>::iterator itr;
            for( itr = idTask.begin(); itr != idTask.end(); ++itr){

                cout << "ID => " << itr->first << ", Status => " << itr->second.c_str() << endl;

                continue;
            }

        // quit
        }else if ((word[0] == "quit") ){

            cout << "------EXIT------" << endl;

            break;
        // wrong command
        }else{

            cout << "---- This is not a proper command! ----" << endl;
        }
        i++;
    }
    return 0;
}