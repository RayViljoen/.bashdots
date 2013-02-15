#!/bin/bash

export PATH="/usr/local/bin:$PATH:/usr/local/sbin:$HOME/.rvm/bin"

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
# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
