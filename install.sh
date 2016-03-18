#!/bin/bash
# WPA/WPA2 Cracking Install Script
yum -y install python-devel zlib-devel openssl-devel libpcap-devel.x86_64 subversion screen glibc-devel
yum -y install automake autoconf gcc-c++
cd
wget http://www.secdev.org/projects/scapy/files/scapy-2.1.0.tar.gz
tar -xzf scapy-2.1.0.tar.gz
cd scapy-2.1.0
python setup.py build
python setup.py install
cd
wget http://pyrit.googlecode.com/files/pyrit-0.4.0.tar.gz
tar xvzf pyrit-0.4.0.tar.gz
cd pyrit-0.4.0
python setup.py build
python setup.py install
cd
wget http://pyrit.googlecode.com/files/cpyrit-cuda-0.4.0.tar.gz
tar xvzf cpyrit-cuda-0.4.0.tar.gz
cd cpyrit-cuda-0.4.0
python setup.py build
python setup.py install
cd
wget http://sourceforge.net/projects/crunch-wordlist/files/crunch-wordlist/crunch-3.1.tgz
tar -xvf crunch-3.1.tgz
cd crunch3.1/
make && make install
ln -s /home/ec2-user/crunch3.1/./crunch /usr/bin/crunch
cd
mkdir -p /tools/wifi
cd /tools/wifi
wget http://www.willhackforsushi.com/code/cowpatty/4.6/cowpatty-4.6.tgz
tar zxvf cowpatty-4.6.tgz
cd cowpatty-4.6/
make
ln -s /tools/wifi/cowpatty-4.6/cowpatty /usr/bin/cowpatty
cd
