#!/usr/bin/env bash
set -e

# Switch to the .devcontainer folder
cd "$( dirname "${BASH_SOURCE[0]}" )"

# Install packages
export DEBIAN_FRONTEND=noninteractive
apt update
apt install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" kali-linux-headless
#sudo apt-get install -y iputils-ping
#sudo apt install -y nmap
#sudo apt-get install -y telnet
#sudo apt-get install -y ftp
#sudo apt-get install -y smbclient
#sudo apt install -y redis-tools
#sudo apt-get install -y lynx
#sudo apt-get install -y mysql*

# Go installs
#go install github.com/OJ/gobuster/v3@latest