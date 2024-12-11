#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

# Get absolute path of the current directory.
DOT_FILES_PATH=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

# Handle symlink for tmux config file.
rm -rf "${HOME}/.local/bin/pionix.sh"
ln -sf "${DOT_FILES_PATH}/solaar/pionix.sh" "${HOME}/.local/bin/"

rm -rf "${HOME}/.local/bin/lenovo"
ln -sf "${DOT_FILES_PATH}/solaar/lenovo" "${HOME}/.local/bin/"
