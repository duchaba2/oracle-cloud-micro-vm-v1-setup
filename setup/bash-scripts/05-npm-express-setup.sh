#!/bin/bash
#
echo "-----------------------------------------------------------------"
echo "Install/Update npm, nodemon, babel, dotenv, cors, and express"
echo "-----------------------------------------------------------------"
echo "The node path is: "
echo $NODE_PATH
echo "The NODE_PATH should be the path below append with "/node_modules"
npm config get prefix
echo "-----------------------------------------------------------------"
npm install --global --verbose npm
npm install --global --verbose nodemon
npm install --global --verbose @babel/core @babel/node
npm install --global --verbose dotenv
npm install --global --verbose cors
npm install --global --verbose express