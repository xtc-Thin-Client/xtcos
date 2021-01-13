#!/bin/bash -e

on_chroot <<EOF
wget -qO - https://bintray.com/user/downloadSubjectPublicKey?username=xtc-thin-client | apt-key add -
wget -qO - https://bintray.com/user/downloadSubjectPublicKey?username=bintray | apt-key add -
echo "deb https://dl.bintray.com/xtc-thin-client/xtc buster main" > /etc/apt/sources.list.d/xtc.list
apt-get update
apt-get -y install xtcbase xtc tightvncserver
apt-get -y remove pulseaudio
EOF
