#!/bin/bash

sudo apt-get update
sudo apt-get install -y build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt1-dev locate libreadline6-dev libcurl4-openssl-dev git-core libssl-dev libyaml-dev openssl autoconf libtool ncurses-dev bison curl wget postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev libsqlite3-dev libgmp-dev libgmp10 libgmp-dev

sudo git clone https://github.com/rapid7/metasploit-framework.git /opt/metasploit-framework

sudo apt-get install -y ruby ruby-dev
sudo gem install bundler

cd /opt/metasploit-framework
bundle install

# Create a symbolic link to /usr/local/bin
sudo ln -sf /opt/metasploit-framework/msfconsole /usr/local/bin/
sudo ln -sf /opt/metasploit-framework/msfvenom /usr/local/bin/

echo "Installation complete. You can now use Metasploit and msfvenom from any location in your terminal."
