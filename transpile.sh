#!/bin/bash

if [ -z "$1" ]; then
    echo "Veuillez fournir le nom du serveur comme argument."
    echo 'example: $> bash transpile.sh flatcar01 > ignition.json'
    exit 1
fi

sed -e "s/HOSTNAME/$1/" $(dirname "$0")/cl.yaml | docker run --rm -i quay.io/coreos/butane:latest
