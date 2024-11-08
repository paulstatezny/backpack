#!/bin/bash

CURRENT_BRANCH=`git symbolic-ref --short HEAD`
REGEX='BROK-([0-9]+)'

if [[ $CURRENT_BRANCH =~ $REGEX ]] ; then
  git commit -m "feat(BROK-${BASH_REMATCH[1]}): $1"
else
  git commit -m "$1"
fi
