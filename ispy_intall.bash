#!/bin/bash
echo ispy install , lets go!!

sudo apt-get update && \ sudo apt-get install -y apt-transport-https && \ sudo apt-get update && \ sudo apt-get install -y aspnetcore-runtime-3.1

sleep 4s

sudo apt-get update 

sleep 6s

sudo add-apt-repository ppa:jonathonf/ffmpeg-4
sleep 1s
sudo apt-get update && \ sudo apt-get install -y ffmpeg
sleep 1s
sudo apt-get install -y libtbb-dev libc6-dev gss-ntlmssp
sleep 2s
sudo apt-get install -y libvlc-dev vlc libx11-dev
sleep 2s

wget https://ispyfiles.azureedge.net/downloads/Agent_Linux64_3_2_0_0.zip
sleep 1s
sudo apt-get install zip unzip
unzip Agent_Linux64_3_2_0_0.zip
echo all set!

