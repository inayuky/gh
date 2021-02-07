#!/bin/bash

# require
# - github cli (auth with token that have scope to delete repository)
REPO_NAME="$1"

# check repository name is given
if [ -z "$REPO_NAME" ]; then
  echo "error: specify repository name."
  exit 1
fi

gh api -X DELETE -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/inayuky/"$REPO_NAME"