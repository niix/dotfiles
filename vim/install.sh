#!/usr/bin/env bash

vimDir=~/.vim
bundleDir=~/.vim/bundle
Vundle=~/.vim/bundle/Vundle.vim

if [ ! -d "$vimDir" ]; then
  echo "Creating vim directory."
  mkdir -p "$vimDir"
fi

if [ ! -d "$bundleDir" ]; then
  echo "Creating bundle directory."
  mkdir -p "$bundleDir"
fi

if [ ! -f ~/.vimrc ]; then
  ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
else
  rm -rf ~/.vimrc
  ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
fi

if [ ! -f ~/.vimrc.bundles ]; then
  ln -s ~/.dotfiles/vim/.vimrc.bundles ~/.vimrc.bundles
else
  rm -rf ~/.vimrc.bundles
  ln -s ~/.dotfiles/vim/.vimrc.bundles ~/.vimrc.bundles
fi

if [ ! -d "$Vundle" ]; then
  echo "Installing Vundle"
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Install local bundles
vim +PluginInstall +qall

echo "Done!"
