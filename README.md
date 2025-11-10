Healthcheck.sh — System Health Monitoring Script
📘 Overview
The healthcheck.sh script is a simple yet powerful Linux system monitoring tool that displays and logs essential health metrics such as CPU load, memory usage, uptime, disk space, and the status of critical services like nginx and ssh.

This project helps system administrators, DevOps engineers, and learners understand and automate basic system health checks using Bash scripting.

⚙️ Features

✅ Displays and logs the following system information:

Metric	Command Used	Description
System Date & Time	date	Shows current system time
System Uptime	uptime	Displays system uptime and load average
CPU Load	uptime / top	Shows CPU usage snapshot
Memory Usage	free -m	Displays RAM usage in MB
Disk Usage	df -h	Displays available and used disk space
Top 5 Memory-Consuming Processes	`ps aux --sort=-%mem	head -n 6`
Service Status	systemctl is-active	Checks if critical services (nginx, ssh) are running
Logging	tee -a healthlog.txt	Saves all results with timestamps to a log file

🧱 Project Structure
healthcheck-project/
│
├── healthcheck.sh      # Main Bash script
├── healthlog.txt       # Output log (auto-generated)
└── README.md           # Documentation file

🖥️ Requirements
Linux environment (Ubuntu, Debian, CentOS, etc.)
bash shell
Common utilities: uptime, free, df, ps, top, systemctl
Optional: nginx and ssh services (for status check)

💡 If you’re using Windows, you can run it inside Ubuntu (WSL).

🚀 Setup & Execution
1️⃣ Clone or Create Project Folder
mkdir healthcheck-project
cd healthcheck-project

2️⃣ Create the Script
nano healthcheck.sh


Paste the full script code inside and save.

3️⃣ Make Script Executable
chmod +x healthcheck.sh

4️⃣ Run the Script
./healthcheck.sh


💡 The script will:

Print system details in the terminal.

Log all output in healthlog.txt.

📄 Sample Output (healthlog.txt)
===============================================================
 System Health Report — 2025-11-10 10:32:15
===============================================================

--- System Date & Time ---
Mon Nov 10 10:32:15 IST 2025

--- Uptime ---
 10:32:15 up 2 days,  4:05,  1 user,  load average: 0.18, 0.12, 0.08

--- CPU Load ---
 10:32:15 up 2 days,  4:05,  1 user,  load average: 0.18, 0.12, 0.08
top - 10:32:15 up 2 days,  4:05,  1 user,  load average: 0.18, 0.12, 0.08
Tasks: 195 total,   1 running, 194 sleeping
%Cpu(s):  2.0 us,  1.0 sy,  0.0 ni, 96.5 id,  0.5 wa,  0.0 hi,  0.0 si,  0.0 st

--- Memory Usage (free -m) ---
              total        used        free      shared  buff/cache   available
Mem:          15938        4522        1229         104        10187       10850
Swap:          2047           0        2047

--- Disk Usage (df -h) ---
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   12G   36G  25% /
/dev/sda2       200G   80G  120G  40% /home

--- Top 5 Memory-Consuming Processes ---
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
www-data  1234  1.0 10.2 345678 789012 ?      Ssl  Oct27  12:34 /usr/sbin/nginx -g daemon off;
mysql     2456  2.3  8.1 678900 623456 ?      Ssl  Oct27  34:12 /usr/sbin/mysqld
root      3312  0.8  4.0 234567 301234 ?      Ssl  Oct28   5:23 /usr/bin/docker
ubuntu    4123  0.1  2.1 123456 156789 ?      S    Oct29   0:01 /usr/bin/python3 app.py
alice     5987  0.0  1.5  98765 112345 pts/0  S+   10:30   0:00 top -b -n1

--- Service Status ---
nginx: running
ssh: running
Then visit your repository:
👉 https://github.com/bunnykukkunoori-wq/healthcheck-project
👨‍💻 Author
Author: Bunny Kukkunoori
Email: bunnykukkunoori@gmail.com
GitHub: github.com/bunnykukkunoori-wq
Project: Healthcheck System Monitoring Script
Version: 1.0
