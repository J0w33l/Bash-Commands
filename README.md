# 🛡️ Cybersecurity Bash Scripts Collection | Junior Version

![Bash](https://img.shields.io/badge/Bash-Scripts-blue?style=for-the-badge&logo=gnu-bash&logoColor=white)
![License](https://img.shields.io/github/license/yourusername/cybersecurity-scripts?style=for-the-badge)
![Contributions](https://img.shields.io/badge/Contributions-Welcome-brightgreen?style=for-the-badge)

A collection of Bash scripts designed to simplify and automate various cybersecurity tasks, including vulnerability scanning, penetration testing, reconnaissance, and more. This repository serves as a toolkit for cybersecurity professionals, ethical hackers, and penetration testers.

## 📜 Overview

This repository includes:
- **Installation Scripts**: Automated setup for popular cybersecurity tools.
- **Reconnaissance Scripts**: Scripts for gathering information about targets.
- **Scanning and Enumeration**: Tools and scripts to find vulnerabilities in web applications, networks, and systems.
- **Exploitation and Testing**: Scripts to help test exploits and validate vulnerabilities.
- **Wordlists**: Pre-configured wordlists optimized for different tasks like directory busting, subdomain enumeration, and more.

## 🧰 Included Scripts

1. **Tool Installer Script**: 
   - **Description**: Automates the installation of popular cybersecurity tools like `ffuf`, `nikto`, `sslscan`, and others.
   - **Usage**: Quickly set up your environment with all necessary tools for web vulnerability testing.

2. **Recon Script**: 
   - **Description**: A script to perform basic reconnaissance, including subdomain enumeration, whois lookups, and DNS information gathering.
   - **Usage**: Ideal for initial information gathering phases of penetration testing.

3. **Vulnerability Scanning Script**: 
   - **Description**: Automates the scanning of web applications using tools like `SQLmap` and `Nikto`.
   - **Usage**: Helps identify common vulnerabilities like SQL injection, XSS, and outdated software.

4. **Exploit Testing Script**: 
   - **Description**: Provides a framework to test exploits against vulnerable targets in a controlled environment.
   - **Usage**: Useful for validating the impact of discovered vulnerabilities.

## 🚀 Getting Started

### Prerequisites

- **Operating System**: Scripts are optimized for Kali Linux, but they can run on other Debian-based systems with minor adjustments.
- **Permissions**: Most scripts require superuser (sudo) privileges.

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/J0w33l/Bash-Commands.git
   cd Bash-Commands
  chmod +x scriptname.sh
  sudo ./scriptname.sh


## 📂 Wordlists

All wordlists used in the scripts are stored in `/usr/share/wordlists`. These wordlists are essential for tasks such as brute-forcing directories, fuzzing, and discovering hidden content. Below are the key wordlists included:

| **Wordlist**                   | **Description**                                                            |
|-------------------------------|----------------------------------------------------------------------------|
| `common.txt`                  | Common paths and filenames used for directory busting.                     |
| `big.txt`                     | An extensive list containing more paths for deeper directory enumeration.  |
| `directory-list-2.3-medium.txt` | A comprehensive list of common directories and files found on web servers. |
| `subdomains.txt`              | Used for subdomain enumeration during reconnaissance.                      |
| `raft-large-words.txt`        | Large set of words ideal for aggressive fuzzing and penetration testing.   |

> **Source**: These wordlists are sourced from the [SecLists](https://github.com/danielmiessler/SecLists) repository, a comprehensive collection of wordlists used by security researchers and professionals.

---

## 🛡️ Security Note

⚠️ **Use Responsibly**: These scripts and tools are intended for ethical hacking, cybersecurity research, and educational purposes **only**. Always ensure you have explicit permission before testing any networks, systems, or applications.

- **Unauthorized Access**: Engaging in unauthorized testing or hacking activities without consent is illegal and unethical. Violations can lead to severe legal consequences.
- **Stay Compliant**: Ensure that your actions comply with local laws, regulations, and ethical standards.
- **For Learning and Testing**: These tools are designed to help you learn about cybersecurity, identify potential vulnerabilities, and improve security in controlled and authorized environments.

> **Disclaimer**: The creator of these scripts are not responsible for any misuse or illegal activity involving these tools. Use them wisely and within the bounds of the law.
