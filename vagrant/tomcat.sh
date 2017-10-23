#!/bin/bash
####################Installing Apache Tomcat###############################################################
yum -y install wget
wget http://mirror.23media.de/apache/tomcat/tomcat-8/v8.5.6/bin/apache-tomcat-8.5.6.tar.gz
tar xzf apache-tomcat-8.5.6.tar.gz
mkdir -p /usr/tomcat/
mv apache-tomcat-8.5.6/* /usr/tomcat/
####################Downaloading Java####################################################################

wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz
####################Java Installation####################################################################
tar xzf jdk-8u151-linux-x64.tar.gz
mkdir -p /usr/java/
mv jdk1.8.0_151 /usr/java/
export JAVA_HOME=/usr/java/jdk1.8.0_151
export PATH=$JAVA_HOME/bin:$PATH
echo "JAVA_HOME=/usr/java/jdk1.8.0_151">>/etc/profile
echo "PATH=JAVA_HOME/java:$PATH">>/etc/profile
######
yum -y install net-tools
/usr/tomcat/bin/startup.sh
yum -y install avahi
wget https://releases.hashicorp.com/serf/0.8.1/serf_0.8.1_linux_amd64.zip
yum -y install unzip
unzip serf_0.8.1_linux_amd64.zip
cp serf /usr/bin/serf


