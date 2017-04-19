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

# Configure OSX Defaults
echo 'Setting new osx defaults.'

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -float 0.000000000001
# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES
# Reset Dock (After killing dashboard)
killall Dock

# Install
function linkIt() {

    #----------------------------
    # ----- Create symlinks -----
    #----------------------------

    ln -sf $PWD/.bash_profile ~/.bash_profile
    ln -sf $PWD/.bashrc ~/.bashrc
    ln -sf $PWD/.inputrc ~/.inputrc

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
