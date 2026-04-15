#!/bin/bash

LOGFILE="$(pwd)/logs/system.log"

echo "------ System Report ------" >> $LOGFILE
date >> $LOGFILE

# CPU Usage
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
echo "Debug CPU : $CPU" >> $LOGFILE
echo "CPU Usage: $CPU%" >> $LOGFILE
if (( $(echo "$CPU > 20" | bc -l) ))
then
    echo "ALERT: High CPU usage - $CPU%" >> $LOGFILE
fi

# Disk Usage
DISK=$(df / | grep / | awk '{print $5}' | sed 's/%//')

echo "Disk Usage: $DISK%" >> $LOGFILE

if [ $DISK -gt 30 ]
then
    echo "ALERT: High Disk usage - $DISK%" >> $LOGFILE
fi

# Service Check (SSH)
SERVICE="ssh"

STATUS=$(systemctl is-active $SERVICE)

echo "SSH Status: $STATUS" >> $LOGFILE

if [ "$STATUS" != "active" ]
then
    echo "ALERT: SSH service is down!" >> $LOGFILE
fi

echo "--------------------------" >> $LOGFILE
