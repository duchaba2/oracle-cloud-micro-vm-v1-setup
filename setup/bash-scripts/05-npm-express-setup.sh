#!/bin/bash
#
echo "-----------------------------------------------------------------"
echo "Install/Update npm, nodemon, babel, dotenv, cors, and express"
echo "-----------------------------------------------------------------"
echo "The node path is: "
echo $NODE_PATH
echo "The NODE_PATH should be the path below "
npm root -g
echo "-----------------------------------------------------------------"
sudo npm install --global --verbose npm
sudo npm install --global --verbose nodemon
sudo npm install --global --verbose @babel/core @babel/node
sudo npm install --global --verbose dotenv
sudo npm install --global --verbose cors
sudo npm install --global --verbose express