/*
2. Write a C program that creates a new process using fork().
. The child process should execute a program named EVEN using execlp() to
display all even numbers up to N.
. The parent process should execute a program named ODD using execlp() to
display all odd numbers up to N.
*/


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{
  int n;
  char num[10];

  printf("Enter a number to check: ");

  scanf("%d", &n);

  // convert the number (n) to string as execlp takes string as argument

  sprintf(num, "%d", n);

  pid_t pid = fork();

  if (pid == 0)
  {
    // child process executes even program
    execlp("./even", "even", num, NULL);
    printf("Child process failed to execute even program");
  }
  else if (pid > 0)
  {
    // parent process executes odd program
    execlp("./odd", "odd", num, NULL);
    printf("Parent process failed to execute odd program");
  }
  else
  {
    printf("Fork failed");
  }
}