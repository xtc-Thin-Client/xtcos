#!/bin/bash

git clone https://github.com/RPi-Distro/pi-gen
cp -r ./stagetm ./pi-gen
cd pi-gen
echo "IMG_NAME='xtcos'" > config
echo "HOSTNAME='xtc'" >> config
echo "FIRST_USER_NAME='pi'" >> config
echo "FIRST_USER_PASS='...'" >> config
echo "ENABLE_SSH='1'" >> config
echo "TIMEZONE_DEFAULT='Europe/Berlin'" >> config
echo "STAGE_LIST='stage0 stage1 stage2 stagetm'" >> config
touch ./stage3/SKIP ./stage4/SKIP ./stage5/SKIP
touch ./stage2/SKIP_IMAGES ./stage4/SKIP_IMAGES ./stage5/SKIP_IMAGES
sudo ./build-docker.sh
