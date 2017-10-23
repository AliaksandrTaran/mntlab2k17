#!/bin/bash
systemctl enable nginx
systemctl start nginx
yum -y install avahi
wget https://releases.hashicorp.com/serf/0.8.1/serf_0.8.1_linux_amd64.zip
yum -y install unzip
unzip serf_0.8.1_linux_amd64.zip
cp serf /usr/bin/serf


