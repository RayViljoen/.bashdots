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
# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2
# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0
# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# Show the ~/Library folder
chflags nohidden ~/Library
# Remove the auto-hiding Dock delay
# defaults write com.apple.Dock autohide-delay -float 0
# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES
# Reset Dock (After killing dashboard)
killall Dock

# Install quicklook plugins
echo 'Installing quicklook plugins.'
quicklook_dir="${HOME}/Library/QuickLook/"
# Check for plugins dir and create if not exists
if [ ! -d  $quicklook_dir ]; then
	mkdir $quicklook_dir
fi
# Copy plugins to ql dir
cp -r ./quicklook_plugins/ $quicklook_dir
# Reload plugins
qlmanage -r &>/dev/null;

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
	
	# Homebrew packages
	if type -P brew &>/dev/null; then
		
		# Install tree if not already
		command -v tree >/dev/null 2>&1 || brew install tree
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
