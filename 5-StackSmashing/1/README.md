ASLR effect 
--------------------------------------------

    ./findadd
    echo 0 | tee /proc/sys/kernel/randomize_va_space
    ./findadd
    echo 1 | tee /proc/sys/kernel/randomize_va_space
    ./findadd
