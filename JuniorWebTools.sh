#!/bin/bash 

###################################################################
#Script Name	: JuniorWebTools                                                                                          
#Description	: Basic WebTools to install in ubuntu if you can't use kali                                                                                                                                                                            
#Author       	:Joel Leiton                                                
#Email         	:joel.leiton@proton.me                                           
###################################################################

# Update and install essential packages
echo "Updating the system..."
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y git wget curl gnupg lsb-release

# Add the Kali Linux repository if it's not already configured
echo "Checking if the Kali Linux repository is configured..."
if ! grep -q "deb http://http.kali.org/kali kali-rolling main non-free contrib" /etc/apt/sources.list; then
    echo "Adding the Kali Linux repository..."
    echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
fi

# Add the Kali Linux repository GPG key
echo "Adding the Kali Linux repository GPG key..."
wget -q -O - https://archive.kali.org/archive-key.asc | sudo apt-key add -

# Update repositories
echo "Updating repositories after adding Kali Linux..."
sudo apt update -y

# Install Ffuf (Fuzz Faster U Fool)
echo "Installing Ffuf..."
sudo apt install -y ffuf

# Install Nikto
echo "Installing Nikto..."
sudo apt install -y nikto

# Install SSLScan
echo "Installing SSLScan..."
sudo apt install -y sslscan

# Install Gobuster
echo "Installing Gobuster..."
sudo apt install -y gobuster

# Install Dirb
echo "Installing Dirb..."
sudo apt install -y dirb

# Install Dirbuster
echo "Installing Dirbuster..."
echo "Installing Java Runtime Environment for Dirbuster..."
sudo apt install -y default-jre
echo "Installing Dirbuster..."
sudo apt install -y dirbuster

# Install SQLmap
echo "Installing SQLmap..."
sudo apt install -y sqlmap

# Install W3af
echo "Installing W3af..."
sudo apt install -y w3af

# Download common wordlists
WORDLIST_DIR="/usr/share/wordlists"
echo "Downloading common wordlists..."

# Wordlists for Gobuster, Dirb, Dirbuster, and Ffuf
sudo mkdir -p $WORDLIST_DIR
cd $WORDLIST_DIR
sudo wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/common.txt -O common.txt
sudo wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/big.txt -O big.txt
sudo wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/directory-list-2.3-medium.txt -O directory-list-2.3-medium.txt
sudo wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/subdomains-top1million-5000.txt -O subdomains.txt
sudo wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/raft-large-words.txt -O raft-large-words.txt

# Verify that all tools were installed correctly
echo "Verifying the installation of the tools..."
command -v ffuf >/dev/null && echo "Ffuf installed successfully" || echo "Error installing Ffuf"
command -v nikto >/dev/null && echo "Nikto installed successfully" || echo "Error installing Nikto"
command -v sslscan >/dev/null && echo "SSLScan installed successfully" || echo "Error installing SSLScan"
command -v gobuster >/dev/null && echo "Gobuster installed successfully" || echo "Error installing Gobuster"
command -v dirb >/dev/null && echo "Dirb installed successfully" || echo "Error installing Dirb"
command -v sqlmap >/dev/null && echo "SQLmap installed successfully" || echo "Error installing SQLmap"
command -v w3af_console >/dev/null && echo "W3af installed successfully" || echo "Error installing W3af"

echo "Installation completed. All tools are ready to use."