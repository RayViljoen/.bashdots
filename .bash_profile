#!/bin/bash

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