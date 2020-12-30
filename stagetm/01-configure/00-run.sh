#!/bin/bash -e

on_chroot <<EOF
echo "deb https://dl.bintray.com/xtc-thin-client/xtc" > /etc/apt/sources.list.d/xtc.list
apt-get update
apt-get -y install xtc
EOF
