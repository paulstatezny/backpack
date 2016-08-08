#!/bin/bash

NUMBER=`git symbolic-ref --short HEAD | tr '-' '\n' | tail -n1 | tr "[:lower:]" "[:upper:]"`

git commit -m "$1 (#$NUMBER)"
