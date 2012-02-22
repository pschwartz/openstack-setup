#!/bin/bash

sudo mv ${2} ../images/
IMAGE=$(basename ${2})
WHO=`whoami`
sudo chown ${WHO}:${WHO} ../images/${IMAGE}

TOKEN=`./obtain-token.sh`
glance -A ${TOKEN} add name="${1}" is_public=true container_format=ovf disk_format=qcow2 < ../images/${IMAGE}

rm -rf ../images/${IMAGE}
