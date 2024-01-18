#!/bin/bash

rhost=10.10.10.10

# to update 
# if /path/wordlist exist, then dir_wordlist = /path
# for now manual

#attack box
dir_wordlist=/usr/share/wordlists/SecLists/Discovery/Web-Content/directory-list-2.3-medium.txt
# kali
dir_wordlist=/usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt


mkdir -p reports

nmap -sSVC --min-rate 8888 -T4 $rhost -vv -oN "reports/nmap-$rhost.txt"
nmap -sSV -T4 --script vuln --min-rate 8888 -vv -d -oN "reports/nmap-vuln-$rhost.txt" $rhost


# ffuf is fast but misses a lot
# ffuf -u http://${rhost}/FUZZ -w $dir_wordlist -t 20 | tee "reports/ffuf-$rhost.txt"
gobuster dir -u http://${rhost} -w $dir_wordlist -t 35 | tee "reports/gobuster-direnum.txt"


