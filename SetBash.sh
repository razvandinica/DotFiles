#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Get absolute path of the current directory.
DOT_FILES_PATH=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

# Handle symlinks for bash history autocompletion.
rm -rf $HOME/.inputrc
echo -e " ==> ~/.inputrc file is looking like this:"
ls -lah "$HOME/.inputrc"
cat "$HOME/.inputrc"
echo -e "$RED"
echo -e " ==> All bash completion configs have been removed."
echo -e "$NC"
read -p " ==> Press [ENTER] to continue !"

ln -sf $DOT_FILES_PATH/bash/inputrc $HOME/.inputrc
echo -e " ==> ~/.inputrc file is looking like this:"
ls -lah "${HOME}/.inputrc"
cat "${HOME}/.inputrc"
echo -e "$GREEN"
echo -e " ==> Bash completions are back in place!"
echo -e "$YELLOW"
echo -e " ==> DONE!"
echo -e "$NC"
