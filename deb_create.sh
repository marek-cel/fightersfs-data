#!/bin/bash

################################################################################

APP_NAME=fightersfs
APP_VER=0.1

################################################################################

DATA_DIR=${APP_NAME}-data_${APP_VER}_focal_all

sudo rm -R $DATA_DIR
sudo rm $DATA_DIR.deb

mkdir $DATA_DIR
mkdir $DATA_DIR/DEBIAN
mkdir $DATA_DIR/usr
mkdir $DATA_DIR/usr/share
mkdir $DATA_DIR/usr/share/fightersfs

cp deb_fightersfs-data_all.control $DATA_DIR/DEBIAN/control
cp -R data/ $DATA_DIR/usr/share/fightersfs

sudo chown root:root -R $DATA_DIR/

dpkg -b $DATA_DIR/

################################################################################

read -p "Press any key to continue..." -n1 -s
echo
