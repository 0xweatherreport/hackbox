#!/usr/bin/env bash
set -e

# Switch to the .devcontainer folder
cd "$( dirname "${BASH_SOURCE[0]}" )"

# Install packages
sudo apt-get update
sudo apt-get install -y iputils-ping
sudo apt install -y nmap
sudo apt-get install -y telnet
sudo apt-get install -y ftp
sudo apt-get install -y smbclient
sudo apt install -y redis-tools
sudo apt-get install -y lynx

# Go installs
go install github.com/OJ/gobuster/v3@latest