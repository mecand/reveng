Source code:
_start:
	xor	eax,eax
	xor	ebx,ebx
	xor	ecx,ecx
	xor	edx,edx
	jmp	two

one:
	pop	ebx
	
	movb	5, al
	xor	ecx,ecx
	int	0x80
	
	mov	eax,esi
	jmp	read

exit:
	movb	$1, %al
	xor	%ebx, %ebx
	int	$0x80

read:
	mov	esi, ebx
	movb	$3, al
	sub	$1, esp
	lea	(esp), ecx
	movb	$1, dl
	int	0x80

	xor	ebx,ebx
	cmp	eax,ebx
	je	exit

	movb	$4,al
	movb	$1,bl
	movb	$1,dl
	int	0x80
	
	add	$1, esp
	jmp	read

two:
	call	one
	.string	"file_name"
