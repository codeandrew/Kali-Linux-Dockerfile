# Attacks 

Documentation on how to attack services

## Before Attacking 

use tor first then proxychains 
First Terminal
`tor`

Second terminal
`proxychains <program>`

## Tools and Softwares

| Tools      | Purpose                                  | How to Install                    | Usage                                                      |
|------------|------------------------------------------|-----------------------------------|------------------------------------------------------------|
| Nmap       | Network scanning and host discovery      | $ sudo apt-get install nmap       | $ nmap -p <port> <rhost>                                   |
| Gobuster   | Web directory and DNS brute-forcing      | $ go get github.com/OJ/gobuster   | $ gobuster dir -u <rhost> -w <wordlist>                    |
| Enum4linux | Windows and Samba enumeration            | $ sudo apt-get install enum4linux | $ enum4linux <rhost>                                       |
| Whatweb    | Web application fingerprinting           | $ gem install whatweb             | $ whatweb <rhost>                                          |
| Nikto      | Web server vulnerability scanner         | $ sudo apt-get install nikto      | $ nikto -h <rhost>                                         |
| Hydra      | Password cracking and brute-forcing tool | $ sudo apt-get install hydra      | $ hydra -l <username> -P <password-list> <rhost> <service> |

## References

WRITING AN EXPLOIT MODULE
- https://www.offensive-security.com/metasploit-unleashed/shell/

MSFVENOM
- https://www.offensive-security.com/metasploit-unleashed/msfvenom/

MYSQL
- https://www.offensive-security.com/metasploit-unleashed/scanner-mysql-auxiliary-modules/

Ransomware
- https://www.sentinelone.com/blog/build-your-own-ransomware-project-root-behind-enemy-lines-part-2/
