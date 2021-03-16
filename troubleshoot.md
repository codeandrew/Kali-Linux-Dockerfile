# Troubleshooting Guides

Documentation on the problems that still occurs on my Containerized Kali.

Last Update: **March 16, 2021**

## Ua Tester

ua-tester is not working because of python3
test git clone to /opt
https://gitlab.com/kalilinux/packages/ua-tester

## Go Buster Not working properly

apt install gobuster

```bash
┌──(root💀ce5167076588)-[/opt/ua-tester]
└─# gobuster -v testphp.vulnweb.com -w /usr/share/wordlists/dirb/common.txt
Error: unknown command "testphp.vulnweb.com" for "gobuster"
```