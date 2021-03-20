#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <system_id>"
    exit 1
fi

wget https://raw.githubusercontent.com/rartino/home-puppet-control/production/bin/provision-ubuntu.sh
chmod +x provision-ubuntu.sh
sudo ./provision-ubuntu.sh
