#!/bin/bash
if [ "$(whoami)" != "root" ]
        then
    echo "Please start the script as root (sudo)!"
    exit 1
else
VBoxManage hostonlyif ipconfig vboxnet0 --ip 192.168.56.1
./cuckoo.py -d
fi
