# Scripts 
## Recon
```bash
#!/bin/bash

export rhost="10.10.10.10"
export wordlist=""

# Check if $rhost variable is empty
if [ -z "$rhost" ]; then
    echo "Please enter the value for \$rhost:"
    read rhost
fi

# Print the value of $rhost
echo "The value of \$rhost is: $rhost"

nmap -sVC --min-rate 8888 -T4 $rhost -vv -oN nmap-$rhost.txt
gobuster -u $rhost -w $wordlist | tee gobuster-$rhost.txt
enum4linux -a $rhost | tee enum-$rhost.txt

```

## PrivEsc

LinEnum
https://github.com/rebootuser/LinEnum/blob/master/LinEnum.sh
```bash 
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh
```
