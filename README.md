#  System Health Check Automation Script

This project contains a Linux shell script **healthcheck.sh** that monitors critical system resources and logs the data into **healthlog.txt** with timestamps.  
It helps System Administrators and DevOps engineers quickly track system performance and service status.

---

##  Features

This script collects and logs the following system information:

| Feature | Command Used |
|--------|--------------|
| System Date & Time | `date` |
| System Uptime | `uptime` |
| CPU Load Average | `uptime` with `awk` |
| Memory Usage | `free -m` |
| Disk Usage | `df -h` |
| Top 5 Memory-Consuming Processes | `ps aux --sort=-%mem | head -n 6` |
| Service Status Check | `systemctl is-active` |

Automatically logs to `healthlog.txt`  
Adds timestamp for every report  
Service monitoring for **nginx** & **ssh**

---

## 🏗️ How to Run the Script

### 1️ Make script executable
```bash
chmod +x healthcheck.sh
