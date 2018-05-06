#!/bin/bash
files=("zshrc" "zshenv" "tmux.conf" "config/nvim")
dir=`pwd`
mkdir ~/.config
for f in ${files[@]}; do
	ln -s $dir/$f ~/.$f
	echo linked $dir/$f ~/.$f
done
