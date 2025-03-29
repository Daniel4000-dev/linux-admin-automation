#!/bin/bash
echo "Monitoring Network Connections"
netstat -tuln
ifstat -i eth0