#!/bin/bash
files=("zshrc" "zshenv" "tmux.conf")
dir=`pwd`

for f in $files; do
	ln -s $dir/$f ~/.$f
	echo linked $dir/$f ~/.$f
done
