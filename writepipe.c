#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
	FILE * stream = popen("cat", "w");
	fprintf(stream, "Hi!\n");
	fflush(stream);
	sleep(20);
	fprintf(stream, "Just testing :D\n");
	fflush(stream);
	pclose(stream);
	fprintf(stdout, "Finished!\n");
	return 0;
}
