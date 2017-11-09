#!/bin/bash

if [ -z "$1" ]; then
  svn diff --diff-cmd icdiff | less -r
else
  if [ -z "$2" ]; then
    echo "Need a branch and the path the trunk!"
    exit 1
  fi
  svn diff "$1" "$2" --diff-cmd icdiff | less -r
fi
