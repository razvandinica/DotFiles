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
