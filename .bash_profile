#!/bin/bash

# Set up Docker env (brew)
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/RayViljoen/.boot2docker/certs/boot2docker-vm

export PATH="/usr/local/bin:$PATH:/usr/local/sbin:$HOME/.rvm/bin"
export ANDROID_HOME=`brew --prefix android`

# Add keys to SSH agent
ssh-add

# Set .bash_profile
BASHDOTS_SOURCE="${BASH_SOURCE[0]}"
# Resolve symlinks
while [ -h "$BASHDOTS_SOURCE" ]
do BASHDOTS_SOURCE="$(readlink "$BASHDOTS_SOURCE")"
done

# Set BashDots dir path
BASHDOTS_DIR="$( dirname $BASHDOTS_SOURCE )"

# ============== Load config ===============

source "$BASHDOTS_DIR/config"

# ============ Load dotfile lib ============

BD_LIB_FILES="$( cd -P $BASHDOTS_DIR && pwd )/lib/*"
for f in $BD_LIB_FILES
do source $f
done

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
