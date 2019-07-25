# Fuzzing ELF file with AFL

Compiling with american fuzzy lop
--------------------------------------------
    afl-gcc -fno-stack-protector -z execstack vuln1.c -o vuln1

Fuzzing Process
--------------------------------------------
    afl-fuzz -i testcase/ -o output/ ./vuln

Find Crash Info
--------------------------------------------
    cat output/crashes 

