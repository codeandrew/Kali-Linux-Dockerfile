# Kali Linux latest with useful tools by zMrDevJ
FROM kalilinux/kali-rolling:latest

ARG DEBIAN_FRONTEND=noninteractive
# Update
COPY config/sources.list /etc/apt/sources.list
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get clean

# Install ZSH shell with custom settings and set it as default shell
RUN apt-get -y install git
#zsh && wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
#COPY config/.zshrc /root/.zshrc
COPY config/.profile /root/.bash_aliases

# Install Kali Linux "Top 10" metapackage and a few useful tools
RUN apt-get -y install vim kali-tools-top10 net-tools whois\
      netcat exploitdb man-db dirb nikto wpscan uniscan nodejs\
      npm python3-pip tor proxychains\
      metasploit-framework \
      dmitry lbd \
      sslyze whatweb

# Install some useful hardware packages
RUN apt-get -y install pciutils usbutils 

RUN apt-get -y update 
RUN apt-get -y install neofetch

# Configure proxychains with Tor
COPY config/proxychains.conf /etc/proxychains.conf

