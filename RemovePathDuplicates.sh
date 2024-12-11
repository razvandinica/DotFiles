#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

# 1. echo "$PATH"      - Outputs the current PATH.
# 2. tr ':' '\n'       - Converts colons to newlines.
# 3. awk '!seen[$0]++' - Keeps track of seen entries and only prints unique ones.
# 4. tr '\n' ':'       - Back to colon-separated format.
# 5. sed 's/:$//'      - Removes the trailing colon.

export FIXED_PATH=$(echo "$PATH" | tr ':' '\n' | awk '!seen[$0]++' | tr '\n' ':' | sed 's/:$//')
