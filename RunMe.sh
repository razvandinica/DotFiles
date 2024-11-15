#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

# Get absolute path of the current directory.
DOT_FILES_PATH=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

# Handle symlinks for tmux config directories.
TMUX_CONFIG_PATH="${HOME}/.config/tmux"
rm -rf $TMUX_CONFIG_PATH
mkdir -p "${TMUX_CONFIG_PATH}/plugins"

# Handle symlink for tmux config file.
rm -rf "${HOME}/.tmux.conf"
ln -s "${DOT_FILES_PATH}/tmux/conf" "${HOME}/.tmux.conf"

# Handle symlinks for kitty editor.
rm -rf $HOME/.config/kitty
ln -s $DOT_FILES_PATH/kitty $HOME/.config/kitty

# Handle symlink for neovim.
rm -rf $HOME/.config/nvim
ln -s $DOT_FILES_PATH/neovim $HOME/.config/nvim

# Handle themes using: gnome-shell-extensions and gnome-tweak.
rm -rf $HOME/.themes/MyTheme
mkdir -p $HOME/.themes/MyTheme/gnome-shell/
ln -sf $DOT_FILES_PATH/gnometheme/gnome-shell.css $HOME/.themes/MyTheme/gnome-shell/gnome-shell.css

./RemovePathDuplicates.sh

exit 0
