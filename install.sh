#!/bin/bash

ln -s -i $(pwd)/tmux.conf $HOME/.tmux.conf
ln -s -i $(pwd)/vimrc $HOME/.vimrc

sudo apt install ripgrep vim tmux

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
