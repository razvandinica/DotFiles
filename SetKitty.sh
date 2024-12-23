#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

# Get absolute path of the current directory.
DOT_FILES_PATH=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

# Handle symlinks for kitty editor.
rm -rf $HOME/.config/kitty
ln -s $DOT_FILES_PATH/kitty $HOME/.config/kitty
