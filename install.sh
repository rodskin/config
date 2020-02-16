#!/bin/sh
sudo apt-get -y install curl
sudo apt-get -y install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
echo "source ~/config/nvim/init.vim" > ~/.config/nvim/init.vim
