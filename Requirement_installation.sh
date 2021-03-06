#!/bin/bash

# Installation of necessary programs to run the current vim setting

# If there is no git and wget, installation is impossible. please install 
sudo apt update
sudo apt install vim
sudo apt install git
sudo apt install wget

# if you want to make your configuration by this script only, use this below comments.
# git clone https://github.com/GijuJ/my_vim_setting.git ~/
# cp ~/my_vim_setting/.vimrc ~/
# cp -r ~/my_vim_setting/.vim ~/

# fzf install
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.bashrc
# vundle install
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Installation plugin.
vim +PluginInstall +qall
