#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
	pid_t pid;
	pid = fork(); //create child process 
	if(pid < 0) {
		perror("Fork failed");
		exit(1);
	}
	else if(pid == 0) {
		//child process 
		printf("Child Process: PID = %d\n", getpid());
		printf("Child exiting...\n");
		exit(0); //child terminates immediately
	}
	else {
		//parent process 
		printf("Parent Process: PID = %d\n", getpid());
		printf("Child PID = %d\n",pid);
		
		//parent sleeps, does not call wait()
		sleep(20);
		printf("Parent exiting...\n");
	}
	return 0;
}