#!/bin/bash

LOG_FILE="healthlog.txt"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

{
echo "=========================================="
echo " System Health Check - $TIMESTAMP"
echo "=========================================="

echo "System Date & Time:"
date
echo ""

echo "System Uptime:"
uptime
echo ""

echo "CPU Load:"
uptime | awk -F'load average:' '{ print $2 }'
echo ""

echo "Memory Usage:"
free -m
echo ""

echo "Disk Usage:"
df -h
echo ""

echo "Top 5 Memory-Consuming Processes:"
ps aux --sort=-%mem | head -n 6
echo ""

echo "Service Status:"
for service in nginx ssh; do
    if systemctl is-active --quiet $service; then
        echo "$service is running "
    else
        echo "$service is NOT running "
    fi
done

echo "=========================================="

} >> "$LOG_FILE" 2>&1
