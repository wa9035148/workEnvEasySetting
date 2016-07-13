#!/bin/bash

set -e 

install_dir=pwd

git submodule update --init --recursive

./vim/bundle/YouCompleteMe/.install.py

cd $HOME

ln -s $install_dir/vim .vim
ln -s $install_dir/vimrc .vimrc
ln -s $install_dir/tmux-conf/tmux.conf .tmux.conf

