#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

solaar config 'MX Keys' change-host 1
solaar config 'MX Master 3' change-host 1
ddcutil --sn GH85D58H028L setvcp 60 0x11
