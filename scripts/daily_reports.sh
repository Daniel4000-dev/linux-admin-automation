#!/bin/bash
echo "Daily System Report"
echo "===================="
uptime
df -h
free -h
grep 'Failed password' /var/log/auth.log
apt list --upgradable