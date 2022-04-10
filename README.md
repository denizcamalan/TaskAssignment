# TestAssignment
 Relimetrics Test Assignment

This project controls execution of tasks running as parallel jobs. At the program startup, the task manager ask the input parameter N. N defines the number of jobs that task manager assign to job IDs. Task manager assign each job to unique job ID. Task manager ask a command and N, until user enter a valid command and N is provided in a valid format.

The manager run within a console application and accept control commands from a command prompt.


# Usage


                                                                                                                                `
                Application input: N – number of jobs to run.

                Control commands:
                • status – returns ids and status of all registered jobs.
                ----> The job status can be one of the following: idle/running/paused/aborted
                • start <id> - starts job with the given id
                • abort <id> - aborts execution of a job with the given id
                • pause <id> - halts execution of a job with the given id
                • resume <id> - resumes execution of a halted job
                • quit – aborts all running jobs and quits the application                                                        
                                                                                                                                `

Also, N defines the number of ID. Used same number of ID and ID numbers only can be between 1 and N because some jobs can assign same ID multiple times and some ID status must indicate "Idle" status.

--> If user select number of jobs : 5
--> Number of id assign automatically 5 ;
                                        
                        `
        ID1 -> 1
        ID2 -> 2
        ID3 -> 3
        ID4 -> 4
        ID5 -> 5        `


If user did not assign any job to some ID, their status observe as an Idle. 

> :warning: **If you enter commands except status and quit command**: You need valid job ID.

> :warning: **Do not enter a value over 1000 for N**: Max number of jobs is 1000.






