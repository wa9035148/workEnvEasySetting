#!/bin/bash

set -e 

install_dir=pwd

git submodule update --init --recursive

./vim/bundle/YouCompleteMe/.install.py

cd $HOME

ln -s $install_dir/vim .vim
ln -s $install_dir/vimrc .vimrc
ln -s $install_dir/tmux-conf/tmux.conf .tmux.conf

#install verilog mode 
mkdir -p $HOME/elisp
wget https://www.veripool.org/ftp/verilog-mode.el $HOME/elisp/ 
mkdir -p $HOME/.vim/ftplugin/
wget http://www.vim.org/scripts/download_script.php?src_id=7578 $HOME/.vim/ftplugin/

