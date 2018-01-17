#!/bin/bash

DESCRIPTION="$1"

if [ -z "$1" ]
then
  echo "Please provide a unique description or keyword for the stash."
else
  git stash save "$1"
fi
