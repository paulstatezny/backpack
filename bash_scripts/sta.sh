#!/bin/bash

DESCRIPTION="$1"

if [ -z "$1" ]
then
  echo "Please provide a stash number that I can use to search for stashes to apply"
else
  git stash apply stash@{$1}
fi
