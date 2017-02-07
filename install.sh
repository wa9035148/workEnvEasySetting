#!/bin/bash

set -e 

install_dir=pwd

git submodule update --init --recursive

#./vim/bundle/YouCompleteMe/.install.py

cd $HOME

ln -sf $install_dir/vim .vim
ln -sf $install_dir/vimrc .vimrc
ln -sf $install_dir/tmux-conf/tmux.conf .tmux.conf
