Section .text
global _start
_start: 
	xor ebx,ebx
	xor eax,eax
	mov al,1
	int 0x80
