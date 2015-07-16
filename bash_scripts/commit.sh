#!/bin/bash

STORY=`git symbolic-ref --short HEAD | tr '-' '\n' | tail -n2 | head -n1 | tr "[:lower:]" "[:upper:]"`
TASK=`git symbolic-ref --short HEAD | tr '-' '\n' | tail -n1 | tr "[:lower:]" "[:upper:]"`

git commit -m "$STORY - $TASK - $1."
