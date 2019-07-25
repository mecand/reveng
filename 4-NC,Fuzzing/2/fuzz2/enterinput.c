#include <stdio.h>
#include <string.h>

int main(void)
{
    char buff[15];
    char buff1[15];
    char buff2[20];
    int pass = 0;

    printf("\n Enter the password 1 : \n");
    gets(buff);
    printf("\n Enter the password 2 : \n");
    gets(buff1);
    printf("\n Enter the password 3 : \n");
    gets(buff);

    if(strcmp(buff, "123")==0)
    {
	if(strcmp(buff1,"abc")==0)
	{
		if(strcmp(buff2,"qwrt")==0)
		{
			printf("\n Free Bird :) \n");
			return 0;
		}
	}
    }

    printf("\n Caged Bird!!! \n");
    return 1;
}
