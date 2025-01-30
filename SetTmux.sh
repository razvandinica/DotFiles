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

# Set tmux configs path.
TMUX_CONFIG_PATH="${HOME}/.config/tmux"

# Remove ~/.tmux.conf
rm -rf ~/.tmux.conf
rm -rf ~/tmux
echo -e " ==> ${HOME} configs for tmux are looking like this:"
ls -lah "${HOME}" | grep tmux

# Handle symlinks for tmux config directories.
rm -rf $TMUX_CONFIG_PATH
echo -e " ==> ${TMUX_CONFIG_PATH} folder is looking like this:"
ls -lah "${TMUX_CONFIG_PATH}"
echo -e "$RED"
echo -e " ==> All tmux configs have been removed."
echo -e "$NC"
read -p " ==> Press [ENTER] to continue !"

# Create tmux plugins directory
mkdir -p "${TMUX_CONFIG_PATH}/plugins"

# Handle symlink for tmux config file.
ln -s "${DOT_FILES_PATH}/tmux/conf" "${HOME}/.config/tmux/tmux.conf"
echo -e " ==> ${HOME} tmux configs are looking like this:"
ls -lah "${HOME}" | grep tmux
ls -lah "${TMUX_CONFIG_PATH}"
ls -lah "${TMUX_CONFIG_PATH}/plugins"
echo -e "$GREEN"
echo -e " ==> All tmux configs are back in place !"
echo -e " ==> Please update plugins: Ctrl-a [R]eload, Ctrl-a [U]pdate all, Ctrl-a [I]nstall, Ctrl-a [R]eload"
echo -e "$YELLOW"
echo -e " ==> DONE!"
echo -e "$NC"
