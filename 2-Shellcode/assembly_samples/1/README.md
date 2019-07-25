C code compilation
-----------------------
	gcc -m32 -no-pie -z execstack -o exitshell exit_shell.c 
	echo $?


ASM code compilation
-----------------------
    nasm -f elf exitasm.asm
    ld -o exitasm exitasm.o
    shellgen.sh exitasm



Then copy paste shellcode to C char array 
