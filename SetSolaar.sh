#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

declare -a solarFiles=(
   switchToFirst
   switchToSecond
)

# Get absolute path of the current directory.
DOT_FILES_PATH=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

if [ ! -d "$HOME/.local/bin" ] ; then
    mkdir -p "${HOME}/.local/bin"
fi

# Remove all previous linked files.
for file in "${solarFiles[@]}"; do
    pathToFile="${HOME}/.local/bin/${file}"
    if [ -f $pathToFile ]; then
        rm -rf $pathToFile
    fi
done

echo -e " ==> ~/.local/bin folder is looking like this:"
ls -lah "$HOME/.local/bin"
echo -e "$RED"
echo -e " ==> All Solaar utils have been removed."
echo -e "$NC"
read -p " ==> Press [ENTER] to continue !"

# Handle symlinks for Solaar utils.
for file in "${solarFiles[@]}"; do
   ln -sf "${DOT_FILES_PATH}/solaar/${file}" "${HOME}/.local/bin/"
done
echo -e " ==> ~/.local/bin folder is looking like this:"
ls -lah "${HOME}/.local/bin"
echo -e "$GREEN"
echo -e " ==> Solaar link are back in place!"
echo -e "$YELLOW"
echo -e " ==> DONE!"
echo -e "$NC"
