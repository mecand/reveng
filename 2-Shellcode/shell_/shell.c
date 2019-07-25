#include <stdio.h>


int main()
{

	char *karkas[2];
	karkas[0] = "/bin/sh";
	karkas[1] = NULL;
        execve(karkas[0],karkas[1],NULL);
}
