#!/bin/bash
#
echo "-----------------------------------------------------------------"
echo "Create 8 GB swapfile"
echo "-----------------------------------------------------------------"
sudo dd if=/dev/zero of=/swapfile bs=1024 count=8388608
sudo chown root:root /swapfile
sudo chmod 0600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -h