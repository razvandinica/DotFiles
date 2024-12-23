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

# Handle themes using: gnome-shell-extensions and gnome-tweak.
rm -rf $HOME/.local/share/themes
echo -e " ==> ~/.local/share/themes folder is looking like this:"
ls -lah "$HOME/.local/share/themes/"

rm -rf $HOME/.themes
echo -e " ==> ~/.themes folder is looking like this:"
ls -lah "$HOME/.themes/"

echo -e "$RED"
echo -e " ==> All my themes have been removed."
echo -e "$NC"
read -p " ==> Press [ENTER] to continue !"

mkdir -p "${HOME}/.local/share/themes"
cp -R $DOT_FILES_PATH/gnometheme/My*Theme $HOME/.local/share/themes/
echo -e " ==> ~/.local/share/themes folder is looking like this:"
ls -lah "${HOME}/.local/share/themes/"

ln -sf $HOME/.local/share/themes $HOME/.themes
echo -e " ==> ~/.themes folder is looking like this:"
ls -lah "${HOME}/.themes/"
echo -e "$GREEN"
echo -e " ==> My gnome shell themes are back in place!"
echo -e "$YELLOW"
echo -e " ==> DONE!"
echo -e "$NC"


#mkdir -p $HOME/.local/share/themes/MyTheme/gnome-shell/
#ln -sf $DOT_FILES_PATH/gnometheme/gnome-shell.css $HOME/.local/share/themes/MyTheme/gnome-shell/gnome-shell.css
