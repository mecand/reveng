Challenge 3
------------------
    Challenge Name          : Sweet Home TCP Server!
    Challenge Concept	: Gaining Access on vulnerable TCP Server with acquiring /etc/passwd file

Compile Program with 
	
    -fno-stack-protector -m32 -no-pie -g flags

Find vulnerable payload size

Generate your payload like

	python -c "print("Vermillion"*10)"

Overwrite EIP and Determine RA & Inject Code

Do not forget to listen your port with netcat!




**TIP** 

Payload Injection with NC
