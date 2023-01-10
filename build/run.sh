#!/bin/bash
cd /root
tar -xf deb.tar
dpkg -i ./gpg/1/libassuan0_2.5.3-7ubuntu2_amd64.deb && dpkg -i ./gpg/1/gpgconf_2.2.19-3ubuntu2.2_amd64.deb
dpkg -i ./gpg/gpg_2.2.19-3ubuntu2.2_amd64.deb
dpkg -i ./dirmngr/1/libksba8_1.3.5-2ubuntu0.20.04.2_amd64.deb && dpkg -i  ./dirmngr/1/libnpth0_1.6-1_amd64.deb
dpkg -i ./dirmngr/dirmngr_2.2.19-3ubuntu2.2_amd64.deb
dpkg -i ./gpg-agent/1/pinentry-curses_1.1.0-3build1_amd64.deb 
dpkg -i  ./gpg-agent/gpg-agent_2.2.19-3ubuntu2.2_amd64.deb
rm up.txt && sleep 3
gpg --keyserver keyserver.ubuntu.com --recv-keys  3B4FE6ACC0B21F32
sleep 2
gpg --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
sleep 2
gpg --export --armor 3B4FE6ACC0B21F32 |  apt-key add -
sleep 2
gpg --export --armor 871920D1991BC93C |  apt-key add -
sleep 2
apt-get update && apt install -y aria2
slepp 5
apt install sudo &&  chmod 777 /etc/init.d/aria2
/etc/init.d/aria2 start





