#!/bin/bash
echo "This script requires SUDO access to run! Please allow!"
echo "Once the script is complete the syshelth script will place a report txt file in your users home directory."
sudo sh ./syshealth.sh > ./system_health_report.txt
echo "......."
echo "..........."
echo "..............."
echo "SysHealth Script Complete"