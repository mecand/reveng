#include <stdio.h>


char shellcode[]= "\x31\xdb\x31\xc0\xb0\x01\xcd\x80";
int main()
{

	(*(void (*)()) shellcode)();
	return 1;
}
