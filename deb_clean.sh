#!/bin/bash

################################################################################

APP_NAME=fightersfs

################################################################################

DATA_DIR=${APP_NAME}-data_*_focal_all

sudo rm -R $DATA_DIR
sudo rm $DATA_DIR.deb

################################################################################

read -p "Press any key to continue..." -n1 -s
echo