#!/bin/bash

. settings

apt-get install -y python-software-properties
apt-add-repository -y ppa:managedit/openstack
apt-get update
apt-get install -y managedit-openstack-pin
apt-get install -y ntp
service ntp restart
