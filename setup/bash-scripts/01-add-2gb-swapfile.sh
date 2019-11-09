#!/bin/bash
#
echo "----------------------------------------------------------------"
echo "Create 2 GB swapfile"
echo "----------------------------------------------------------------"
sudo dd if=/dev/zero of=/swapfile bs=1024 count=2097152
sudo chown root:root /swapfile
sudo chmod 0600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -h