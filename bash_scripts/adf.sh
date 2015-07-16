#!/bin/bash

if [ -v "$1" ]
then
  ARG="*$1*"
else
  ARG="."
fi

git add $ARG -A
git diff --cached
