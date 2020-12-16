# kioptrix
## ports
22
80
139

## webenumeration
apache modssl

## SMB exploit
SMB 2.2.9

trans2open smb vulnerability

required nonstaged payload

***rooted***

# Legacy
windowa xp sp3 box

## nmap tcp all ports
nmap -A -T4 -p- 10.10.10.4

## smbclient
`smbclient -L \\\\10.10.10.4\\`

## exploit
MS08-067 
SMB rpc buffer overflow
Reverse Shell

## meterpreter commands
help

getuid

sysinfo

hashdump

# Lame
## ports 
21
22
139
445
3632

## samba
samba 3.0.2.0 debian
'Username' map script

## post exploitation
whoami
/etc/passwd/
/etc/shadow/
ifconfig
arp
routing table
netstat
services
user files
scheduled tasks

# Blue
windows 7 7601 sp1
## eternal blue
ms17-010

## ports
135
139
445
49152
49153
49154
49155
49156
49157

## smb



## unshadow command 
unshadow passwd shadow

returns hashes that can be cracked

TCM cracking linux passwd video

# Devel
## ports 
21
	webroot directory
80 IIS/7.5

# Jerry

default admin creds on admin page

payload in war file upload

# Nibbles
22
80

## exploit 
password nibbles
nibble blog rce
	user shell
sudo -l
create sh script
bash -i(ineractive shell) from sudo'd file so bash will run as root

# optimum
## port 
80 httpfileserver httpd 2.3
RCE exploit

