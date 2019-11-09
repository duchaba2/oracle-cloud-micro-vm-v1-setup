#!/bin/bash
#
echo "----------------------------------------------------------------"
echo "Start up nodejs http and test port #80"
echo "----------------------------------------------------------------"
echo "On command line type: >>curl http://localhost:80"
echo " "
echo "The public IP is:"
curl ifconfig.me
echo " "
echo "Substitude the above public IP to the localhost"
echo "----------------------------------------------------------------"
sudo node nodejs-http-hello.js