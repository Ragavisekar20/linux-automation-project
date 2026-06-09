#!/bin/bash

DATE=$(date +%Y-%m-%d)

echo "Creating Backup..."

tar -czf backups/log_backup_$DATE.tar.gz /var/log 2>/dev/null

echo "Generating System Report..."

REPORT_FILE="logs/report_$DATE.txt"

echo "===== SYSTEM REPORT =====" > $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Date:" >> $REPORT_FILE
date >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "CPU Load:" >> $REPORT_FILE
uptime >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Memory Usage:" >> $REPORT_FILE
free -h >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Disk Usage:" >> $REPORT_FILE
df -h >> $REPORT_FILE

echo ""
echo "Backup and Report Created Successfully"
