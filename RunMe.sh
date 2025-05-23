#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

# Get absolute path of the current directory.
DOT_FILES_PATH=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

. SetTmux.sh
. SetNeovim.sh
. setSolaar.sh
. setGnomeShellThemes.sh
. setBash.sh
. RemovePathDuplicates.sh

exit 0
