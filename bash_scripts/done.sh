#!/bin/bash

if [ -n "$1" ]
then
  LINES="$1"
else
  LINES=8
fi

FILTER='s/[0-9]{4}-([0-9]{2}-[0-9]{2}) [0-9]{2}:[0-9]{2}:[0-9]{2}/\1/'

tail -n $LINES $POMODORO_LOG_PATH | sed -E "$FILTER"
