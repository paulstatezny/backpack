#!/bin/bash

if [ "$1" != "" ]
then
  ARG="*$1*"
else
  ARG="."
fi

git add "$ARG"
git diff --cached
