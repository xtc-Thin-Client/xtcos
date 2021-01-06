#!/bin/bash

git clone https://github.com/RPi-Distro/pi-gen
cp -r ./stagetm ./pi-gen
cp -r ./patch ./pi-gen
cd pi-gen
echo "IMG_NAME='xtcos'" > config
echo "HOSTNAME='xtc'" >> config
echo "FIRST_USER_NAME='thinclient'" >> config
echo "FIRST_USER_PASS='thinclient'" >> config
echo "ENABLE_SSH='1'" >> config
echo "TIMEZONE_DEFAULT='Europe/Berlin'" >> config
echo "STAGE_LIST='stage0 stage1 stage2 stage3 stagetm'" >> config
touch ./stage4/SKIP ./stage5/SKIP
touch ./stage2/SKIP_IMAGES ./stage4/SKIP_IMAGES ./stage5/SKIP_IMAGES
sudo ./build-docker.sh
