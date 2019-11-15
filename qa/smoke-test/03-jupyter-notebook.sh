#!/bin/bash
#
echo "----------------------------------------------------------------"
echo "Start up the jupyter notebook server with no-brower"
echo "----------------------------------------------------------------"
echo "The public IP is:"
curl ifconfig.me
echo " "
echo "Step 1: Substitude the above public IP to the below URL"
echo " "
echo "Step 2: In Jupyter notebook, navigate and load to qa/smoke-test/04-monty-smoke-test.ipynb"
echo "-----------------------------------------------------------------"
source monty_py_env/bin/activate
sudo jupyter notebook --no-browser --allow-root