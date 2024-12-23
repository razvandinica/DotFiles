#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

# Get absolute path of the current directory.
DOT_FILES_PATH=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

# colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${RED}"
echo -e " ==> Removing any existent nvim-linux64 folder from ~/.local/bin folder."
rm -rf "${HOME}/.local/bin/nvim*"
echo -e "${GREEN}"
echo -e "==> OK"

echo -e "${RED}"
echo -e " ==> Downloading latest nvim-linux64.tar.gz archive into $DOT_FILES_PATH folder."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
echo -e "${GREEN}"
echo -e "==> OK"

echo -e "${RED}"
echo -e " ==> Extracting nvim-linux64.tar.gz archive into ~/.local/bin folder."
tar -C "${HOME}/.local/bin" -xzf nvim-linux64.tar.gz
echo -e "${GREEN}"
echo -e "==> OK"

echo -e "${RED}"
echo -e " ==> Remove archive."
rm -rf nvim-linux64.tar.gz
echo -e "${GREEN}"
echo -e "==> OK"

echo -e "${RED}"
echo -e " ==> Get version of extracted package."
NVIM_VERSION=$(~/.local/bin/nvim-linux64/bin/nvim --version | head -n 1 | awk '{print $2}')
echo -e "${GREEN}"
echo " ==> OK, found version: ${NVIM_VERSION}"

echo -e "${RED}"
echo -e " ==> Move it into /opt folder."
sudo rm -rf "/opt/nvim-linux64-${NVIM_VERSION}"
sudo mv "${HOME}/.local/bin/nvim-linux64" "/opt/nvim-linux64-${NVIM_VERSION}"
echo -e "${GREEN}"
echo -e "==> OK"

echo -e "${RED}"
echo -e " ==> Create a  symlink to NO version."
sudo ln -sf "/opt/nvim-linux64-${NVIM_VERSION}" "/opt/nvim-linux64"
echo -e "${GREEN}"
ls -lah /opt
echo -e "==> OK"

echo -e "$NC"
read -p " ==> Press [ENTER] to continue !"

sudo apt install python3-neovim -y

# Set PATH to find Neovim binary
# echo "export PATH='/opt/nvim-linux64/bin:${PATH}'" >> ~/.profile
