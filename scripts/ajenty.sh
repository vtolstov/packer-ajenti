#!/bin/sh -xe

date "+%Y-%m-%d %H:%M:%S"
apt-get -y --force-yes install software-properties-common cloud-init jq curl



date "+%Y-%m-%d %H:%M:%S"

fstrim -v /
