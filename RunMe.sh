#!/usr/bin/env bash

### Get absolute path of the current directory
DOT_FILES_PATH=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

rm -rf ${HOME}/.config/tmux
rm -rf ${HOME}/.tmux.conf
mkdir ${HOME}/.config/tmux
mkdir ${HOME}/.config/tmux/plugins
ln -s ${DOT_FILES_PATH}/tmux/conf ${HOME}/.tmux.conf

rm -rf ${HOME}/.config/kitty
ln -s ${DOT_FILES_PATH}/kitty ${HOME}/.config/kitty

rm -rf $HOME/.config/nvim
ln -s ${DOT_FILES_PATH}/neovim ${HOME}/.config/nvim

rm -rf $HOME/.themes/MyTheme
mkdir -p ${HOME}/.themes/MyTheme/gnome-shell/
ln -sf ${DOT_FILES_PATH}/gnometheme/gnome-shell.css ${HOME}/.themes/MyTheme/gnome-shell/gnome-shell.css
