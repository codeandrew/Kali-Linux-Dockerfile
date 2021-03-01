# Kali-Linux-Dockerfile

A simple dockerfile which allows you to build a _docker image_ starting from the latest official one of **Kali Linux** and including some useful tools.

## Included tools

These are the main **tools** which are included:

- Kali Linux [Top 10](https://tools.kali.org/kali-metapackages) metapackage
- exploitdb
- man-db
- dirb
- nikto
- wpscan
- uniscan
- tor
- proxychains

Note that you can _add/modify/delete_ configuration files by doing the related changes in the dockerfile.

##### DockerHub

```bash
docker pull codeandrew/kali-rolling:latest
```
### Todos

- Add some more useful tools, languages.

**Enjoy!**

### References

- https://www.unixmen.com/run-kali-linux-2-0-in-docker-container/
- https://www.kali.org/docs/containers/official-kalilinux-docker-images/
- https://www.kali.org/docs/containers/using-kali-docker-images/ 
- https://www.kali.org/news/major-metapackage-makeover/

Usage 

```bash
docker run -it --tty -v scripts:/tmp -v /var/run.docker.sock:/var/run/docker.sock -p 9990-9999:9990-9999 codeandrew/kali-rolling:latest
──(root💀2f2521b98c43)-[/tmp]
└─#
```


## My Installed Tools

| Tool Name | Description                                                                                                                                                                                                     | Command                                                                   | Package Name |   |
|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|--------------|---|
| Nmap      | Network Scanner                                                                                                                                                                                                 | nmap -v -A -T4 -Pn ${TARGET}                                              | nmap         |   |
| Dmitry    | Deepmagic Information Gathering Tool.  Basic functionality of DMitry allows for information to be gathered about a target host from a simple whois lookup  on  the target to uptime reports  and TCP portscans. | dmitry ${TARGET} dmitry -s ${TARGET}                                      | dmitry       |   |
| LBD       | Load Balancer Detector                                                                                                                                                                                          | lbd ${TARGET}                                                             | lbd          |   |
| SSlyze    | Checking weakness in SSL                                                                                                                                                                                        | sslyze --heartbleed --sslv2 --sslv3 --tlsv1 --tlsv1_1 --tlsv1_2 ${TARGET} | sslyze       |   |
| WhatWeb   | Scans Website description, performance and metadata                                                                                                                                                             | whatweb ${TARGET}                                                         | whatweb      |   |



## Troubleshoot

### Ua Tester
ua-tester is not working because of python3
test git clone to /opt
https://gitlab.com/kalilinux/packages/ua-tester

### Go Buster Not working properly

apt install gobuster
```
┌──(root💀ce5167076588)-[/opt/ua-tester]
└─# gobuster -v testphp.vulnweb.com -w /usr/share/wordlists/dirb/common.txt
Error: unknown command "testphp.vulnweb.com" for "gobuster"
```
