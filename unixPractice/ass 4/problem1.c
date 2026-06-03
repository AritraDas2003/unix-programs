/*
1. Write a C program in which:
. The parent process prints "Parent Running !! ".
. The child process executes the Is -l command to list files in the current directory using execlp0.
. The parent process waits for the child process to finish execution.
*/

#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>


int main(){

        pid_t pid; // pid_t is a special dtype to store the pids
        printf("Parent process Running");


        pid = fork();
        // if pid<0 then fork failed
        if(pid< 0 ){

           printf("Fork Failed");
        } else if(pid == 0){
           printf("Child Process is executing...");

           execlp("ls", "ls", "-l", NULL);

           printf("Child  Process Failed.."); // this line will not execute if the execlp() runs successfully
        } else{
           wait(NULL); // parent process waits untill NULL occures in child process

           printf("child process finished");
        }


        return 0;

}