#!/bin/bash

# Update the package lists
sudo apt update

# Install GPSd and related tools
sudo apt install gpsd gpsd-clients libgps-dev libgps23 libmobiledevice-dev libplist-dev libimobiledevice-dev libusbmuxd-dev

# Install  wireless tools
sudo apt install kali-linux-wireless 

# Install Aircrack-ng
#sudo apt install aircrack-ng

# Install Airgeddon
sudo apt install git
git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
cd airgeddon
sudo bash airgeddon.sh

# Install IMEI tracking tools
sudo apt install libssl-dev libxml2-dev libxslt1-dev python-dev python-pip
sudo pip install requests
git clone https://github.com/urbanadventurer/WhatWeb.git
cd WhatWeb
sudo ./whatweb --install
sudo apt install libxml2-utils
git clone https://github.com/sundowndev/PhoneInfoga.git
cd PhoneInfoga
sudo python3 -m pip install -r requirements.txt

echo "Installation completed Sir , YOu can grab a cup of coffee and rest !!."
