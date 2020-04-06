#!/bin/sh

########
# COLORS
########
NORMAL="\033[0m"
RED="\033[0;31m"
GREEN="\033[0;32m"
BROWN="\033[0;33m"
BLUE="\033[0;34m"
CYAN="\033[0;36m"
YELLOW="\033[0;33m"
LIGHT_RED="\033[1;31m"
LIGHT_GREEN="\033[1;32m"
LIGHT_BLUE="\033[1;34m"
LIGHT_YELLOW="\033[1;33m"
WHITE="\033[1;37m"
BLACK="\033[0;30m"
MAGENTA="\033[1;35m"
LIGHT_CYAN="\033[1;36m"
LIGHT_GRAY="\033[0;37m"
GRAY="\033[01;30m"
BOLD="\033[1m"
UNDERSCORE="\033[4m"
REVERSE="\033[7m"

cd ~/

sudo apt install git
sudo apt install curl
sudo apt install neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
echo "source ~/config/nvim/init.vim" > ~/.config/nvim/init.vim

git clone https://github.com/pa-de-solminihac/configuration.git
git clone https://github.com/pa-de-solminihac/sitesync.git

# installer php 7.3 et 5.6
# sudo apt install php7.3-zip
# installer mariadb

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt
sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048



sudo a2enmod ssl
sudo a2enmod headers
sudo a2ensite default-ssl
sudo a2enconf ssl-params
sudo apache2ctl configtest
sudo systemctl restart apache2


mkdir ~/dev
mkdir ~/dev/php
mkdir ~/dev/nodejs
mkdir ~/dev/tmp
mkdir ~/dev/dump_saves
