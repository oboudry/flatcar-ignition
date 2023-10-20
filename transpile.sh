#!/bin/bash

if [ -z "$1" -o -z "$2" ]; then
    echo "Veuillez fournir le nom du serveur et l'IP comme arguments."
    echo 'example: $> bash transpile.sh flatcar01 192.168.77.101 > ignition.json'
    exit 1
fi

sed -e "s/HOSTNAME/$1/" -e "s/IPADDRESS/$2/" $(dirname "$0")/cl.yaml | docker run --rm -i quay.io/coreos/butane:latest
