#Netmon notes

##Nmap Scan

{
kali@kali:~/HTBNotes/netmon$ sudo nmap -p- -T4 -A 10.129.1.126
Starting Nmap 7.80 ( https://nmap.org ) at 2020-11-21 20:40 EST
Nmap scan report for 10.129.1.126
Host is up (0.041s latency).
Not shown: 65522 closed ports
PORT      STATE SERVICE      VERSION
21/tcp    open  ftp          Microsoft ftpd
| ftp-syst: 
|_  SYST: Windows_NT
80/tcp    open  http         Indy httpd 18.1.37.13946 (Paessler PRTG bandwidth monitor)
|_http-server-header: PRTG/18.1.37.13946
| http-title: Welcome | PRTG Network Monitor (NETMON)
|_Requested resource was /index.htm
|_http-trane-info: Problem with XML parsing of /evox/about
135/tcp   open  msrpc        Microsoft Windows RPC
139/tcp   open  netbios-ssn  Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds Microsoft Windows Server 2008 R2 - 2012 microsoft-ds
5985/tcp  open  http         Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
47001/tcp open  http         Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
|_http-title: Not Found
49664/tcp open  msrpc        Microsoft Windows RPC
49665/tcp open  msrpc        Microsoft Windows RPC
49666/tcp open  msrpc        Microsoft Windows RPC
49667/tcp open  msrpc        Microsoft Windows RPC
49668/tcp open  msrpc        Microsoft Windows RPC
49669/tcp open  msrpc        Microsoft Windows RPC
No exact OS matches for host (If you know what OS is running on it, see https://nmap.org/submit/ ).
TCP/IP fingerprint:
OS:SCAN(V=7.80%E=4%D=11/21%OT=21%CT=1%CU=42879%PV=Y%DS=2%DC=T%G=Y%TM=5FB9C2
OS:2D%P=x86_64-pc-linux-gnu)SEQ(SP=106%GCD=1%ISR=105%TI=I%CI=I%II=I%SS=S%TS
OS:=A)OPS(O1=M54DNW8ST11%O2=M54DNW8ST11%O3=M54wqDNW8NNT11%O4=M54DNW8ST11%O5=M
OS:54DNW8ST11%O6=M54DST11)WIN(W1=2000%W2=2000%W3=2000%W4=2000%W5=2000%W6=20
OS:00)ECN(R=Y%DF=Y%T=80%W=2000%O=M54DNW8NNS%CC=Y%Q=)T1(R=Y%DF=Y%T=80%S=O%A=
OS:S+%F=AS%RD=0%Q=)T2(R=Y%DF=Y%T=80%W=0%S=Z%A=S%F=AR%O=%RD=0%Q=)T3(R=Y%DF=Y
OS:%T=80%W=0%S=Z%A=O%F=AR%O=%RD=0%Q=)T4(R=Y%DF=Y%T=80%W=0%S=A%A=O%F=R%O=%RD
OS:=0%Q=)T5(R=Y%DF=Y%T=80%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)T6(R=Y%DF=Y%T=80%W=0
OS:%S=A%A=O%F=R%O=%RD=0%Q=)T7(R=Y%DF=Y%T=80%W=0%S=Z%A=S+%F=AR%O=%RD=0%Q=)U1
OS:(R=Y%DF=N%T=80%IPL=164%UN=0%RIPL=G%RID=G%RIPCK=G%RUCK=G%RUD=G)IE(R=Y%DFI
OS:=N%T=80%CD=Z)

Network Distance: 2 hops
Service Info: OSs: Windows, Windows Server 2008 R2 - 2012; CPE: cpe:/o:microsoft:windows

Host script results:
|_clock-skew: mean: 3m15s, deviation: 0s, median: 3m15s
|_smb-os-discovery: ERROR: Script execution failed (use -d to debug)
| smb-security-mode: 
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
| smb2-security-mode: 
|   2.02: 
|_    Message signing enabled but not required
| smb2-time: 
|   date: 2020-11-22T01:46:17
|_  start_date: 2020-11-22T01:35:50

TRACEROUTE (using port 554/tcp)
HOP RTT      ADDRESS
1   37.88 ms 10.10.14.1
2   38.16 ms 10.129.1.126

OS and Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 147.28 seconds
}

#PRTG Network monitor
The default data folder is located as follows, depending on your Windows version:

Windows Server 2012 (R2), Windows Server 2016, Windows 10, Windows 8.1, Windows 8, Windows 7, Windows Server 2008 R2:

%programdata%\Paessler\PRTG Network Monitor


#Enumeration

##port 21
FTP
- from Nmap
	Version: Microsoft ftpd
	SYST: Windows_NT
-kali@kali:~/HTBNotes/netmon$ nc -nv 10.129.1.126 21
(UNKNOWN) [10.129.1.126] 21 (ftp) open
220 Microsoft FTP Service

-connected through browser user access was allowed by default. Got user flag by browing to Users/public/user.txt
- no admin access
- log file available under inetpub/logs/wmsvc/W3SVC1/ext190226.log
	-shows service running as administrator
- c:/windows/system32/license.rtf
	windows server 2016
##port 80
PRTG Network Monitor v18.1.37.13946

