#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{

  int n = atoi(argv[1]);

  for (int i = 1; i <= n; i++)
  {
    if (i % 2 == 0)
    {
      printf("%d", i);
    }
  }

  printf("\n");

  return 0;
}