#!/bin/bash

rhost=tryhackme.com

# whois
whois $rhost

# DNS
# can be used to return all the IPv4 addresses
nslookup -type=A $rhost 1.1.1.1
# learn about the email servers and configurations for a particular domain
nslookup -type=MX $rhost
# Lookup DNS TXT records	
nslookup -type=TXT $rhost

# https://dnsdumpster.com/
echo "[+] Continue Searching Here: https://dnsdumpster.com/ and https://www.shodan.io"
