#!/bin/bash

TIME=`date +"%Y-%m-%d %T"`
TEXT="$TIME | $1"
FILE="$POMODORO_LOG_PATH"

if [ -n "$1" ]
then
  touch $FILE
  echo $TEXT >> $FILE
fi
