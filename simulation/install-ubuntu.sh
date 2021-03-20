#!/bin/bash

if [ -z "$1" -o -z "$2" ]; then
    echo "Usage: $0 <provision_script_url> <system_id>"
    echo
    echo "E.g.:"
    echo "  $0 https://gitlab.liu.se/mdi/puppet-control/raw/production/bin/provision-ubuntu.sh hse"
    echo "  $0 https://raw.githubusercontent.com/rartino/home-puppet-control/production/bin/provision-ubuntu.sh minimoose"
    echo
    exit 1
fi

wget "$1" -o provision-ubuntu.sh
chmod +x provision-ubuntu.sh
sudo ./provision-ubuntu.sh "$2"
