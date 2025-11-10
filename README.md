Healthcheck.sh — Linux System Health Monitoring Script

# Overview

The healthcheck.sh project is a simple yet powerful Bash automation tool designed to collect, display, and log essential system health information on Linux servers.

This script helps system administrators, DevOps engineers, and learners monitor vital system metrics such as CPU load, memory usage, uptime, disk usage, and service status (e.g., nginx, ssh).

All output is displayed on the terminal and logged into a file (healthlog.txt) with timestamps for historical analysis.

# Features



# Project Structure

healthcheck-project/
│
├── healthcheck.sh      # Main Bash script

├── healthlog.txt       # Log file (auto-generated after running script)

└── README.md           # Project documentation

# System Requirements

# Operating System: 
Linux (Ubuntu, Debian, CentOS, Fedora, etc.)

# Shell: 
bash (pre-installed on most Linux systems)

# Utilities Required:
uptime

free

df

ps

top

systemctl

# Optional Services:

nginx

ssh

# Windows Users:
Run this script inside Ubuntu (WSL) using the command:

bash healthcheck.sh

# Installation and Setup
# 1️⃣ Clone or Create the Project Directory
mkdir healthcheck-project

cd healthcheck-project

# 2️⃣ Create the Script File
nano healthcheck.sh

# 3️⃣ Make the Script Executable
chmod +x healthcheck.sh

# 4️⃣ Run the Script
./healthcheck.sh


💡 This will:

Display the system report in your terminal.

Append the same data (with timestamp) to healthlog.txt.
