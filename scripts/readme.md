# Scripts 
## Recon
```bash
#!/bin/bash

export rhost=""
export wordlist="/usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt"

# Check if $rhost variable is empty
if [ -z "$rhost" ]; then
    echo "Please enter the value for \$rhost:"
    read rhost
fi

# Check if directory wordlist exists
wordlist="/usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt"

if [ -f "$wordlist" ]; then
    echo "File exists: $wordlist"
else
    echo "File does not exist: $wordlist"
    find / -name "directory-list-*" 2>/dev/null
    echo "Please enter directory for wordlist"
    read wordlist
fi


# Print the value of $rhost
echo "The value of \$rhost is: $rhost"

nmap -sVC --min-rate 8888 -T4 $rhost -vv -oN nmap-$rhost.txt
nmap -sV -T4 --script vuln --min-rate 8888 -vv -d -oN nmap-vuln.txt $rhost
gobuster dir -u $rhost -w $wordlist -t 50 | tee gobuster-$rhost.txt
enum4linux -a $rhost | tee enum-$rhost.txt

```

## PrivEsc

LinEnum
https://github.com/rebootuser/LinEnum/blob/master/LinEnum.sh
```bash 
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh
```
