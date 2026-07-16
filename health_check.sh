
#!/bin/bash

echo "==============================="
echo "   Server Health Check Report"
echo "==============================="

echo ""
echo "check current directory"
pwd


echo ""
echo "Hostname:"
hostname

echo ""
echo "Current Date & Time:"
date

echo ""
echo "Uptime:"
uptime

echo ""
echo "CPU Load:"
uptime | awk -F'load average:' '{print $2}'

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Top 5 Memory Consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -6

echo ""
echo "Top 5 CPU Consuming Processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6

echo ""
echo "Logged-in Users:"
who

echo ""
echo "Last 5 System Logs:"
journalctl -n 5 --no-pager

echo ""
echo "Health Check Completed."
