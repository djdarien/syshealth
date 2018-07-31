#!/bin/bash
now=$(date +"%m_%d_%Y")

sudo sh ./syshealth.sh > ./system_health_report$now.txt
sleep 15s
echo "Hello! Your System health report for $hostname of date $now is ready and has been attached to this email. Have a great day!" | mail -s "System Health Report for $now" dentwistle@voalte.com -a $hostname-system_health_report$now.txt
