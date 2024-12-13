#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

sudo solaar config 'MX Keys' change-host "${1}"
sudo solaar config 'MX Master 3' change-host "${1}"
sudo ddcutil --sn GH85D58H028L setvcp 60 "0x1${1}"
