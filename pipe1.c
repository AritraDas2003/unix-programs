#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
	int fd[2];
	int status;
	status = pipe(fd);
	char buf1[20] = "Hi...\n";
	char buf2[20];
	
	if (status < 0) {
		perror("Pipe Failed..\n");
	}
	else {
		printf("Pipe creation successful...\n");
	}
	
	write(fd[1], buf1, sizeof(buf1));
	read(fd[0], buf2, sizeof(buf2));
	printf("%s",buf2);
	close(fd[0]);
	close(fd[1]);
	return 0;
}
