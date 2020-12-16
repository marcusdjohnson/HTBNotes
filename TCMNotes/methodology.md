Passive Information Gathering
    Identify target and scope
    Hunter.io > harvest emails
    gather breached credentials
    thehavester
    FInd ASNs
    Subdomain enumeration
        sublist3r
        amass
        crt.sh
    Identify web technologies
        builtwith
        whatweb
   Google fu
        Search subs
        Search file types
        search trademark/copyright message
    Social Media
        Badge pics
        building layout
        org structure
        applications on screens
Active Information Gathering
    vuln scan 
        nessus
        metasploit
    Service Enumeration
        autorecon
        masscan
        NMAP
            TCP
            UDP
            research all applications and versions
            get manuals
            source code
            CVEs
    Web Enumeration
        Check HTTPS and HTTP on all web ports        
        Webcrawl        
        Nikto
        Burp
        Gobuster/dirb/dirbuster/dirsearch/wfuzz
   File system access
        FTP
        NFS
        SAMBA
   Check what is out of place/looks odd
        services running on odd ports
        Set a time limit
   
   Exploitation
        searchsploit        
        exploitDB
        google search/Github
        find a vulnerability/ get a shell
        read the damn code carefully. Understand the exploit.
        
    Post Exploitation
        enumerate again
            OS
            All users
            User and Admin access
            Accessible Files/Folders
            Installed Applications/Binaries/libraries
            Network Settings
            Scheduled Tasks/ Cron Jobs
            Running Processes/Services
            passwords
            zip files
            config files
        LinEnum
        LinPrivChecker
        Linux Smart Enumeration
        PowerUp/Windows enum
        Powerless
   
   Privilege Escalation
        Use previously gleened info
        look for misconfigurations
        abused file permissions
        processes running as root/admin
        cracked passwords. Might just be the same for root/admin
        setuid binaries
        world Read/Write files
        scheduled Tasks/Cronjobs that can be reconfigured
        user Paths
        
        Sagi Shahars windows/Linux local Privilege Escalation Workshop
            https://www.youtube.com/playlist?list=PLjG9EfEtwbvIrGFTx4XctK8IxkUJkAEqP
            https://github.com/sagishahar/lpeworkshop
    Linux
        linenum
        linpeas
        linuxprivchecker   
    Win
        dump hashes
        collect data
        persist
