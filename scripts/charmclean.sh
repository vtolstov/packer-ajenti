#!/bin/sh -ex

: <<COMMENT
if [ -d /var/cache/lxc ]; then
    rm -rf /var/cache/lxc/*
fi

names=$(lxc-ls --running)
if [ "x${names}" != "x" ]; then
    for name in $names; do
        lxc-attach -n $name -- apt-get clean
        lxc-attach -n $name -- find /var/lib/apt -type f | xargs rm -f
    done
fi
COMMENT

fstrim -v /
