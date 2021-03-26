#!/bin/bash
now=$(date +"%m_%d_%Y")
servername= hostname
sudo sh ./syshealth.sh > ./system_health_report$now.txt
sleep 5s
echo "Hello! Your System health report for $servername of date $now is ready and has been attached to this email. Have a great day!" | mailx -s "System Health Report for $now "  -a system_health_report$now.txt emailhere@dddomain.com
