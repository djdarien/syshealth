    #!/bin/bash
    echo "Current Time & Date of Health Check" 
   date;
    echo "System Uptime:"
    uptime
    echo "----------------------"
    echo "System Network Info"
    ip addr
    echo "----------------------" 
    echo "Currently connected:"
    w
    echo "--------------------"
    echo "Last logins:"
    last -a |head -3
    echo "--------------------"
    echo "Disk and memory usage:"
    df -h | xargs | awk '{print "Free/total disk: " $11 " / " $9}'
    free -m | xargs | awk '{print "Free/total memory: " $17 " / " $8 " MB"}'
    echo "--------------------"
    start_log=`head -1 /var/log/messages |cut -c 1-12`
    oom=`grep -ci kill /var/log/messages`
    echo -n "OOM errors since $start_log :" $oom
    echo ""
    echo "--------------------"
    echo "Utilization and most expensive processes:"
    top -b |head -3
    echo
    top -b |head -10 |tail -4
    echo "--------------------"
    echo "Open TCP ports:"
   if service = running
   sudo service nmap status
   then
   nmap -p- -T4 127.0.0.1
   else
   pause
   echo "NO NMAP Installed! Continue? Without Error?"
   echo "--------------------"
    echo "Current connections:"
    ss -s
    echo "--------------------"
    echo "processes:"
    ps auxf --width=200
    echo "--------------------"
    echo "vmstat:"
    vmstat 1 5


