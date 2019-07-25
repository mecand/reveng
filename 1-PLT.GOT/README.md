# Procedure Linkage Table and Global Offset Table Example

This example is for understanding basic concept of dynamic linking in order to search further dynamic memory vulnerabilities.

Compilation
----------------------
    gcc -m32 -no-pie -g -o example example1.c

NO PIE = NO Position Independent Executable flag, Kernel Loads the binary and dependencies into a random location of virtual memory with PIE  -g extra debugging info.

GOT, PLT Section
---------------------- 
    objdump -d -j .plt ./example1
    objdump -d -j .got ./example1
    objdump -d -j .plt.got ./example1
    objdump -d -j .got.plt ./example1

    readelf -S ./example1
    readelf -x SECTION_NUMBER ./example1 => GOT

Dynamic Lookup
----------------------
    gdb ./example1
    disass main
    break *0x080491eb
    r
    x/i $pc
    x/wx *0xCORRESPONDINGADDRESSOFFUNCTION
    si
    x/4i $pc
    si
    si
    x/4i $pc

    x/4i JUMPADDRESS

v
