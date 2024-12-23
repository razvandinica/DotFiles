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

# Remove all previous linked files.
rm -rf $HOME/.config/nvim
echo -e " ==> ~/.config/nvim folder is looking like this:"
ls -lah "$HOME/.config/nvim"
echo -e "$RED"
echo -e " ==> All Neovim configs have been removed."
echo -e "$NC"
read -p " ==> Press [ENTER] to continue !"

# Handle symlink for neovim.
ln -s $DOT_FILES_PATH/neovim $HOME/.config/nvim
echo -e " ==> ~/.config/nvim folder is looking like this:"
ls -lah "${HOME}/.config/nvim/"
echo -e "$GREEN"
echo -e " ==> Neovim configs are back in place!"
echo -e "$YELLOW"
echo -e " ==> DONE!"
echo -e "$NC"
