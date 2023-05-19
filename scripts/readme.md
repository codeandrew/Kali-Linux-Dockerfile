# Scripts 
## Recon
```bash
#!/bin/bash

export rhost=""
export dir_wordlist="/usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt"

# Check if $rhost variable is empty
if [ -z "$rhost" ]; then
    echo "Please enter the value for \$rhost:"
    read rhost
fi

# Check if directory wordlist exists
if [ -f "$dir_wordlist" ]; then
    echo "File exists: $wordlist"
else
    echo "File does not exist: $dir_wordlist"
    find / -name "directory-list-*" 2>/dev/null
    echo "Please enter directory for wordlist"
    read dir_wordlist
fi


# Print the value of $rhost
echo "The value of \$rhost is: $rhost"

nmap -sVC --min-rate 8888 -T4 $rhost -vv -oN nmap-$rhost.txt
nmap -sV -T4 --script vuln --min-rate 8888 -vv -d -oN nmap-vuln.txt $rhost
gobuster dir -u $rhost -w $dir_wordlist -t 50 | tee gobuster-$rhost.txt
enum4linux -a $rhost | tee enum-$rhost.txt
```

## PrivEsc
LinuxSmartEnumeration 
https://github.com/diego-treitos/linux-smart-enumeration
```bash
wget https://raw.githubusercontent.com/diego-treitos/linux-smart-enumeration/master/lse.sh; chmod +x ./lse.sh
# ./lse.sh : to look at overview
# ./lse.sh -l 1 -i : to verbose
```

LinEnum
https://github.com/rebootuser/LinEnum/blob/master/LinEnum.sh
```bash 
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh
# mkdir report
# ./LinEnum.sh -k password -e report -t
```

