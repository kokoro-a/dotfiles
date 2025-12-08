#!/bin/sh
dir=$(cd $(dirname $0); pwd)
ln -s $dir/.zshrc ~/.zshrc
ln -s $dir/.tmux.conf ~/.tmux.conf

