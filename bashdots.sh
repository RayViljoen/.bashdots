#!/bin/bash

# Welcome
echo "
 _ __               ___          
( /  )          /  ( / \   _/_   
 /--< __,  (   /_   /  /__ /  (  
/___/(_/(_/_)_/ /_(/\_/(_)(__/_)_
https://github.com/RayViljoen/bashdots/
"
# .bashdots dir
BD_DIR="$(dirname "$0")"

# Change to .bashdots
cd "$BD_DIR"

# Install
function linkIt() {

	#----------------------------
	# ----- Create symlinks -----
	#----------------------------

	ln -sf $PWD/.bash_profile ~/.bash_profile
	ln -sf $PWD/.bashrc ~/.bashrc
	ln -sf $PWD/.inputrc ~/.inputrc

	#---------------------------
	# --- Install any extras ---
	#---------------------------

	# Gems
	if type -P gem &>/dev/null; then
		
		# https://github.com/adamcooke/key-installer
		# Script to push an SSH key to a remote host via. SSH.
		gem sources -a http://gems.github.com
		sudo gem install adamcooke-key-installer
	fi

	# Source it
	source ~/.bash_profile
	echo "Done"
}

# Confirm symlinks unless forced
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	linkIt
# Default to install with prompt
else
	read -p "Create BashDots symlinks and overwrite existing bash dotfiles? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		linkIt
	fi
fi
unset linkIt