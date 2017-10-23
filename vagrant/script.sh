#!/bin/bash
####################Creating NGINX repo###############################################################

echo '[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/7/$basearch/
gpgcheck=0
enabled=1'>/etc/yum.repos.d/nginx.repo

####################NGINX Installation###################################################################

yum -y install nginx
####################Downaloading Java####################################################################

wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz
####################Java Installation####################################################################
tar xzf jdk-8u151-linux-x64.tar.gz
mkdir -p /usr/java/
mv jdk1.8.0_151 /usr/java/
export JAVA_HOME=/usr/java/jdk1.8.0_151
export PATH=$JAVA_HOME/bin:$PATH
echo "export JAVA_HOME=/usr/java/jdk1.8.0_151">>/etc/profile
echo "export PATH=JAVA_HOME/bin:$PATH">>/etc/profile
######


