#!/bin/bash
#
echo "-----------------------------------------------------------------"
echo "Setup Jupyter remote access to port #8888"
echo "-----------------------------------------------------------------"
jupyter notebook --generate-config
cp ./jupyter_notebook_config.py ~/.jupyter
