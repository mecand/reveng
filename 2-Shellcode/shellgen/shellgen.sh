for i in $(objdump -d $1 -M intel | grep "^ "|cut -f2);do echo '\x'$i;done;

