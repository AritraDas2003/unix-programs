#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
	pid_t pid;
	
	pid = fork();
	if(pid < 0) {
		//fork failed
		printf("Process creation failed\n");
		
	}
	else if (pid == 0) {
		//child process 
		printf("Child Process\n");
		printf("PID = %d\n", getpid());
		printf("Parent PID = %d\n", getppid());
	}
	else {
		//parent process 
		printf("Parent Process.\n");
		printf("PID = %d\n", getpid());
		printf("Child PID = %d\n", pid);
	}
	return 0;
}