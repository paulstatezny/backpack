#!/bin/bash

git checkout develop
git pull
git fetch --prune
git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
