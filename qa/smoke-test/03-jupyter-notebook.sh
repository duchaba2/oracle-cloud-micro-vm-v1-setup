#!/bin/bash
#
echo "----------------------------------------------------------------"
echo "Start up the jupyter notebook server with no-brower"
echo "----------------------------------------------------------------"
echo "The public IP is:"
curl ifconfig.me
echo " "
echo "Substitude the above public IP to the below URL"
echo "----------------------------------------------------------------"
source monty_py_env/bin/activate
sudo jupyter notebook --no-browser --allow-root