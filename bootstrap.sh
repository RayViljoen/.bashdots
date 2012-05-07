#!/bin/bash

# Welcome
echo ""
echo " _ __               ___          "
echo "( /  )          /  ( / \   _/_   "
echo " /--< __,  (   /_   /  /__ /  (  "
echo "/___/(_/(_/_)_/ /_(/\_/(_)(__/_)_"
echo ""
echo "by Ray Viljoen"
echo "https://github.com/RayViljoen/bashdots/"
echo ""

# Change to .bashdots
cd "$(dirname "$0")"

# Update to latest
git pull

# Create symlinks
function linkIt() {
	
	ln -sf $PWD/.bash_profile ~/.bash_profile
	ln -sf $PWD/.bashrc ~/.bashrc
	ln -sf $PWD/.inputrc ~/.inputrc

	# Source it
	source ~/.bash_profile
}

# Confirm unless forced
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	linkIt
else
	read -p "Create bashdots symlinks and overwrite existing bash dotfiles? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		linkIt
	fi
fi
unset linkIt