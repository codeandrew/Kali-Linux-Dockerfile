# Scripts 
## Recon
```bash
export rhost="10.10.10.10"
export wordlist=""
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
