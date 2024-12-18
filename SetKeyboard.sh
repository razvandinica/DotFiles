#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

sudo dpkg-reconfigure keyboard-configuration

exit 0
