#!/bin/bash
echo "System Inventory Report"
echo "========================="
echo "CPU Info: $(lscpu)"
echo "Memory Info: $(free -h)"
echo "Disk Info: $(df -h)"
echo "Installed Packages: $(dpkg --get-selections)"
echo "Running Services: $(systemctl list-units --type=service --state=running)"