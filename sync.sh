#! /bin/bash

set -e

GIT_DIR="./.git"
GITIGNORE="./.gitignore"
CURRENT_DIR="./."
PREVIOUS_DIR="./.."
FILE_REGEX="\.\/(\.[a-zA-Z_-]+)([\.]+[a-z]+)?(\.swp)?"

# Scan the repository for .files
# This script exempts the following files:
#   - git directory: ./.git
#   - git ignore: ./.gitignore
#   - swap files: *.swp
# TODO(doria): Add a prompt for users to ensure they actually want to add this information
for entry in "."/.*
do
  if [[ $entry =~ $FILE_REGEX && $entry != $GIT_DIR && $entry != $GITIGNORE ]];
  then
    if [[ ! -n  ${BASH_REMATCH[3]} ]];
    then
      cp -r "./${BASH_REMATCH[1]}${BASH_REMATCH[2]}" "$HOME/";
    fi
  fi
done
