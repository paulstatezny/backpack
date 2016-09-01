#!/bin/bash

if [ $# -eq 0 ]
then
  ARG='.'
else
  ARG="*$1*"
fi

git add "$ARG"
git status
