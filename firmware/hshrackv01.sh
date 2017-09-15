#!/bin/bash
echo 'start update, upgrade, installs (internet needed) script'
sudo apt-get update
sudo apt-get upgrade -y
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password '
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password '
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password "
time sudo apt-get install \
vim vim-gtk \
automake \
codeblocks \
arduino \
clamav \
filezilla \
git-core \
gparted \
xorg \
xscreensaver \
apache2 \
mysql-server mysql-client \
php5 php5-mysql php5-curl phpmyadmin \
libjpeg8-dev \
libx11-dev libxpm-dev \
LibXp-dev \
libwebp-dev \
libfreeimage-dev libopenal-dev libpango1.0-dev \
libsndfile1-dev \
libudev-dev libasound2-dev -y
wget http://www.genlogic.com/download/glg-CE-3-6-linux-pi-arm6.tar.gz
gunzip /usr/local/glg/glg-3-6-linux-pi-arm6.tar.gz 
sudo tar xvf glg-3-6-linux-pi-arm6.tar --directory /usr/local
wget https://download.zerotier.com/zerotier-one-armhf.deb
sudo dpkg --install zerotier-one-armhf.deb
echo finished script