# Kali-Linux-Dockerfile

A simple dockerfile which allows you to build a _docker image_ starting from the latest official one of **Kali Linux** and including some useful tools.

## Demo

A Demo of Containerized Kali Linux using tor and proxychains

![Kali Docker](./demo/kali-docker-tor-demo.gif)

## Usage

```bash

NAME=kali
IMAGE=codeandrew/kali-rolling:latest
KALI_DIR=$HOME/kali
mkdir -p $KALI_DIR

# Run Image with Docker Sock for Faster Process 
docker run -it --tty -v $KALI_DIR:/home -v /var/run.docker.sock:/var/run/docker.sock -p 4440-4449:4440-4449 --name $NAME $IMAGE
──(root💀2f2521b98c43)-[/tmp]
└─#
```

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

### CheatSheets

### One Liner Server

```bash
python3 -m http.server 9999 # Desired Port
```

## My Installed Tools

| Tool Name | Description                                                                                                                                                                                                     | Command                                                                              | Package Name | References                                          |
|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|--------------|-----------------------------------------------------|
| Nmap      | Network Scanner                                                                                                                                                                                                 | nmap -v -A -T4 -Pn ${TARGET}                                                         | nmap         | https://tools.kali.org/information-gathering/nmap   |
| Dmitry    | Deepmagic Information Gathering Tool.  Basic functionality of DMitry allows for information to be gathered about a target host from a simple whois lookup  on  the target to uptime reports  and TCP portscans. | dmitry ${TARGET} dmitry -s ${TARGET}                                                 | dmitry       | https://tools.kali.org/information-gathering/dmitry |
| LBD       | Load Balancer Detector                                                                                                                                                                                          | lbd ${TARGET}                                                                        | lbd          | https://tools.kali.org/information-gathering/lbd    |
| SSlyze    | Checking weakness in SSL                                                                                                                                                                                        | sslyze --heartbleed --sslv2 --sslv3 --tlsv1 --tlsv1_1 --tlsv1_2 ${TARGET}            | sslyze       | https://tools.kali.org/information-gathering/sslyze |
| WhatWeb   | Scans Website description, performance and metadata                                                                                                                                                             | whatweb ${TARGET}                                                                    | whatweb      | https://tools.kali.org/web-applications/whatweb     |
| Nikto     | web server scanner                                                                                                                                                                                              | nikto -Display 1234EP -o /tmp/report.html -Format htm -Tuning 123bde -host ${TARGET} | nikto        | https://tools.kali.org/information-gathering/nikto  |
| Uniscan   | Uniscan is a simple Remote File Include,  Local File Include and Remote Command Execution  vulnerability scanner                                                                                                | uniscan -u http://${TARGET} -qweds                                                   | uniscan      | https://tools.kali.org/web-applications/uniscan     |


## TOOLS

```bash
mkdir -p $HOME/repo
cd $HOME/repo
wget https://raw.githubusercontent.com/mzet-/linux-exploit-suggester/master/linux-exploit-suggester.sh -O les.sh

```

## References

- https://www.unixmen.com/run-kali-linux-2-0-in-docker-container/
- https://www.kali.org/docs/containers/official-kalilinux-docker-images/
- https://www.kali.org/docs/containers/using-kali-docker-images/ 
- https://www.kali.org/news/major-metapackage-makeover/

