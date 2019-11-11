#!/bin/bash
#
echo "-----------------------------------------------------------------"
echo "Install torch, fastai and monty"
echo "-----------------------------------------------------------------"
sudo pip install torchvision==0.4.0
sudo pip install torch==1.2.0
sudo pip install --upgrade git+https://github.com/fastai/fastai.git@master
sudo pip install --upgrade git+https://github.com/duchaba2/monty_fastai_v1.git@2019-08-06-nlp-refactor
