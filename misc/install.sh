#!/usr/bin/env bash
#
# Installer for misc things
DEV_DIR="$HOME/development"
if [ ! -d "$DEV_DIR" ]; then
    mkdir "$DEV_DIR"
fi

install_vim_stuff () {
    echo 'Installing Vundle'
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

install_vim_stuff