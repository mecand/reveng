#include <stdio.h>
#include <string.h>
#include <stdlib.h>


char totally_secure(char *arg2[])
{
    char buffer[256];
    printf("What is your name?\n");
    strcpy(buffer, arg2[1]);
    printf("Hello: %s!\n", buffer);
}


int main(int argc, char *argv[])
{
 setvbuf(stdin, 0, 2, 0);
 setvbuf(stdout, 0, 2, 0);
 printf("Hello, I'm your friendly & totally secure binary :)!\n");
 totally_secure(argv);
 return 0;
}
