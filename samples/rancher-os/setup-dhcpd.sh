#!/bin/sh

mkdir /var/lib/rancher/conf/dhcp

curl https://raw.githubusercontent.com/Takoa/docker-dhcpd/master/samples/rancher-os/dhcpd.yml -o /var/lib/rancher/conf/dhcpd.yml
curl https://raw.githubusercontent.com/Takoa/docker-dhcpd/master/samples/rancher-os/dhcpd.conf -o /var/lib/rancher/conf/dhcp/dhcpd.conf

sudo ros service enable /var/lib/rancher/conf/dhcpd.yml
sudo ros service up dhcpd
