#!/bin/bash

NUMBER=`git symbolic-ref --short HEAD | tr '/' '\n' | tail -n1 | tr '-' '\n' | head -n1`

re='^[0-9]+$'
if ! [[ $NUMBER =~ $re ]] ; then
  git commit -m "$1"
else
  git commit -m "$1 (#$NUMBER)"
fi
