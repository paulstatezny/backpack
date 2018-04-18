#!/bin/bash

CURRENT_BRANCH=`git symbolic-ref --short HEAD`
REGEX='^([A-Z]+-[0-9]+)'

if [[ $CURRENT_BRANCH =~ $REGEX ]] ; then
  git commit -m "${BASH_REMATCH[1]}: $1"
else
  git commit -m "$1"
fi
