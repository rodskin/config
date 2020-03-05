#!/bin/sho
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

