alias ga="git add *"
alias gc="git commit -m"
alias gp="git push"
alias scantcp="nmap -p- -T4 -A $ip -oA Nmap/Initial"
alias scanudp="nmap -p- -sU -sV -T4 $ip -oA Nmap/UDP"
alias webscan="nikto -h http://$ip/"
