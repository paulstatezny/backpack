#!/bin/bash

BRANCH=`git for-each-ref | sed -E 's/[a-zA-Z0-9]*[[:space:]]commit[[:space:]]refs\/(heads|remotes\/origin)\///g' | grep $1 | head -n1`

if [ -z "$BRANCH" ]
then
  echo "Branch not found"
else
  git checkout $BRANCH
  git pull origin $BRANCH
fi
