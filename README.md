Healthcheck.sh — Linux System Health Monitoring Script

# Overview

The healthcheck.sh project is a simple yet powerful Bash automation tool designed to collect, display, and log essential system health information on Linux servers.

This script helps system administrators, DevOps engineers, and learners monitor vital system metrics such as CPU load, memory usage, uptime, disk usage, and service status (e.g., nginx, ssh).

All output is displayed on the terminal and logged into a file (healthlog.txt) with timestamps for historical analysis.

# Features of the Healthcheck Project
# 1. System Date and Time

Displays the current date and time of the system using the date command.

Useful to know when the report was generated, especially in logs.

Appears at the top of every report with a timestamp.

# 2. System Uptime

Shows how long the system has been running since the last reboot.

Includes number of logged-in users and load averages for the last 1, 5, and 15 minutes.

# 3. CPU Load Information

Extracts CPU load details from both uptime and top.

Helps identify CPU utilization trends and possible system overloads.

# 4. Memory Usage (RAM)

Displays memory usage in megabytes (MB) using free -m.

Shows:

Total memory

Used memory

Free memory

Swap space

Helps monitor memory leaks or high consumption.

# 5. Disk Usage

Reports disk utilization across all mounted partitions using df -h.

Displays sizes in human-readable format (GB/MB).

Helps ensure no filesystem is running out of space.

# 6. Top 5 Memory-Consuming Processes

Lists the top 5 processes consuming the most RAM.

Helps identify memory-hogging applications.

# 7. Logging with Timestamp

Every run of the script logs results into healthlog.txt with the current timestamp.

Uses tee -a to display output in terminal and save to file simultaneously.

Useful for:

Tracking historical data.

Auditing server performance.

# 8. Lightweight and Portable

Written entirely in Bash — no external dependencies.

Runs on any Linux environment (local, server, or cloud).

Works on Ubuntu, Debian, CentOS, Fedora, and WSL.

# 9. Easy Customization

You can easily modify:

Number of processes displayed.

Services checked.

Output file name or format.

# Use Cases

Server health monitoring

DevOps system diagnostics

Daily scheduled system reports

Training or practice for shell scripting

Lightweight monitoring for small systems



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
# 1️.Clone or Create the Project Directory
mkdir healthcheck-project

cd healthcheck-project

# 2️.Create the Script File
nano healthcheck.sh

# 3️.Make the Script Executable
chmod +x healthcheck.sh

# 4️.Run the Script
./healthcheck.sh


# This will:

Display the system report in your terminal.

Append the same data (with timestamp) to healthlog.txt.

# Sample Output:

===============================================================

 System Health Report — 2025-11-10 10:45:32
 
===============================================================

--- System Date & Time ---

Mon Nov 10 10:45:32 IST 2025

--- Uptime ---

 10:45:32 up 3 days,  6:02,  2 users,  load average: 0.18, 0.15, 0.09

...
--- Service Status ---

nginx: running

ssh: running

Report completed at: 2025-11-10 10:45:32

# Then visit your repo:

https://github.com/bunnykukkunoori-wq/healthcheck-project

# Author Information

Author: Bunny Kukkunoori

Email: bunnykukkunoori@gmail.com

GitHub: github.com/bunnykukkunoori-wq

Version: 1.0

Project Name: Healthcheck System Monitoring Script

