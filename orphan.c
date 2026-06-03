#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
	pid_t pid;
	
	pid = fork(); //create a child process 
	if(pid < 0) {
		//error 
		perror("Fork failed\n");
		exit(1);
	}
	else if(pid > 0) {
		//parent process 
		printf("Parent process: PID = %d\n", getpid());
		printf("Parent exiting...\n");
		exit(0);
	}
	else {
		//child process 
		printf("Child Process: PID = %d\n", getpid());
		printf("Initial Parent PID = %d\n", getpid());
		sleep(5);
		printf("After parent exit...\n");
		printf("Now Parent PID = %d\n", getppid());
	}
	return 0;
}