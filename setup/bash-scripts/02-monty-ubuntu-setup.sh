#!/bin/bash
#
echo "----------------------------------------------------------------"
echo "Setup the Oracle VM with Ubuntu 18.6 OS"
echo "----------------------------------------------------------------"
echo "Step 1: Update the apt-library to the latest and greatest."
echo "----------------------------------------------------------------"
sudo apt-get update
echo "----------------------------------------------------------------"
echo "Step 2: Install or update the latest NodeJS, npm, Python3, PIP, Jupyter"
echo "----------------------------------------------------------------"
sudo apt install nodejs
sudo apt install npm
echo "----------------------------------------------------------------"
echo "Step 3: Install or update the latest Python3, PIP, Jupyter"
echo "----------------------------------------------------------------"
sudo apt install python3
sudo apt install python3-pip
sudo apt install python3-dev
sudo apt install python3-venv
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install jupyter
sudo pip install --upgrade virtualenv
echo "----------------------------------------------------------------"
echo "Step 4: Set up Oracle cloud firewall to have http-access"
echo "----------------------------------------------------------------"
sudo apt install firewalld
sudo firewall-cmd --zone=public --permanent --add-port=80/tcp
sudo firewall-cmd --zone=public --permanent --add-port=8888/tcp
sudo firewall-cmd --reload
echo "----------------------------------------------------------------"
echo "Step 5: Print info and Clean up"
echo "----------------------------------------------------------------"
echo "The public IP is:"
curl ifconfig.me
echo "Free RAM public IP is (mb):"
free -m
echo "Free disk:"
df -h
#
#
echo "-----------------------------------------------------------------"
echo "We are done. Happy coding!"
echo "-----------------------------------------------------------------"