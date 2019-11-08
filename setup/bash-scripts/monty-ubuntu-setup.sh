#!/bin/bash
#
echo "---------------------------------------------------------------\n"
echo "Setup the Oracle VM with Ubuntu 18.6 OS"
echo "---------------------------------------------------------------\n"
echo "Step 1: Update the apt-library to the latest and greatest."
echo "---------------------------------------------------------------\n"
sudo apt-get update
echo "---------------------------------------------------------------\n"
echo "Step 2: Install or update the latest NodeJS, npm, Python3, PIP, Jupyter"
echo "---------------------------------------------------------------\n"
sudo apt install nodejs
sudo apt install npm
echo "---------------------------------------------------------------\n"
echo "Step 3: Install or update the latest Python3, PIP, Jupyter"
echo "---------------------------------------------------------------\n"
sudo apt install python3
sudo apt install python3-pip
sudo apt install python3-dev
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install jupyter
sudo pip install --upgrade virtualenv
echo "---------------------------------------------------------------\n"
echo "Step 4: Set up Oracle cloud firewall to have http-access"
echo "---------------------------------------------------------------\n"
sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --reload
echo "---------------------------------------------------------------\n"
echo "Step 5: Print info and Clean up"
echo "---------------------------------------------------------------\n"
echo "The public IP is:"
curl ifconfig.me
echo "Free RAM public IP is (mb):"
free -m
echo "Free disk:"
df -h
#
#
echo "---------------------------------------------------------------\n"
echo "We are done. Happy coding!"
echo "---------------------------------------------------------------\n"