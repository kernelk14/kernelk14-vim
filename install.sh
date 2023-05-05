#!/bin/sh
# set -xe
# This is a script for Vimrc
FILE=/home/$(whoami)/.vimrc
NEWFILE=/home/$(whoami)/.vimrc.bak
if [ -f "$FILE" ]; then
    clear
    echo "$FILE already exists, backing up your old .vimrc file"
    mv "$FILE" -v "$NEWFILE"
    if [ -f "/usr/bin/wget" ]; then
      wget https://raw.githubusercontent.com/kernelk14/kernelk14-vim/master/.vimrc
    else
      echo "wget is not installed!"
    fi
    clear
    echo "installing vim-plug"
    if [ -f "/usr/bin/curl" ]; then
      curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    else
      echo "curl is not installed!"
    fi
else
    clear
    echo "It seems that $FILE does not exist. Creating new config."

    if [ -f "/usr/bin/wget" ]; then
      wget https://raw.githubusercontent.com/kernelk14/kernelk14-vim/master/.vimrc
    else
      echo "wget is not installed!"
    fi
    clear
    echo "installing vim-plug"
    if [ -f "/usr/bin/curl" ]; then
      curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    else
      echo "curl is not installed!"
    fi
fi

