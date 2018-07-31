#!/bin/bash
now=$(date +"%m_%d_%Y")
sudo sh ./syshealth.sh > ./system_health_report$now.txt echo "Hello! Your System health report for $now is ready and has been attached to this email. Have a great day!" | mail -s "System Health Report for $now" djdarien@protonmail.com -A system_health_report$now.txt 
