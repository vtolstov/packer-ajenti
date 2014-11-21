#!/bin/sh -xe
wget -O- https://raw.github.com/Eugeny/ajenti/master/scripts/install-ubuntu.sh | sudo sh
apt-get update

date "+%Y-%m-%d %H:%M:%S"

fstrim -v /