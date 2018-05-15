#!/bin/bash
now=$(date +"%m_%d_%Y")
echo "This script requires SUDO access to run! Please allow!"
echo "Once the script is complete the syshelth script will place a report txt file in your users home directory."
sudo sh ./syshealth.sh > ./system_health_report$now.txt
echo "......."
echo "..........."
sleep 3s
echo "..............."
sleep 2s
echo "SysHealth Script Complete"
