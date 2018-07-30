#!/bin/bash
now=$(date +"%m_%d_%Y")
echo "Welcome to the Redhat SysHealth Reporter"
echo -n "First time run and need email setup?"
read answer
if echo "$answer" | grep -iq "^y" ;then
  echo "Installing mailx and setting up for reporting!"
  echo "PLEASE WAIT!...."
  sleep 2s
  echo "....."
  sleep 1s
  echo ".........."
  #runs yum updater and installs and sets up mailx
  sudo yum update -y
  sleep 10s
  sudo yum install -y mailx
  sleep 20s
  sudo ln -s /bin/mailx /bin/email
  sleep 25s
  sudo sed -i '# set smtp=smtp://smtp.server.tld:port_number set smtp=smtp://smtp.example.com:543 # tell mailx that it needs to authorise set smtp-auth=login # set the user for SMTP # set smtp-auth-user=user@domain.tld set smtp-auth-user=user.name@example.com # set the password for authorisation set smtp-auth-password=enter-password-here-1234' /etc/mail.rc
sleep 30s
echo "INSTALL COMPLETE!!"
else
echo "This part of the script is for installation only!!"
echo "Once the script is setup it will email you system health report txt file to your desired email for monitoring."
sleep 2s
echo "GOODBYE FOR NOW!"
sleep 1s
exit
