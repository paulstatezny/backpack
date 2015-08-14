#!/bin/bash

function go() {
	CONF=~/go.conf
	BASE=~/

	touch $CONF

	if [ "$1" != "" ]
	then
		ALIAS="$(cat ~/go.conf | grep "^$1 " | sed "s/^$1 //")";
	fi

	if [ "$1" = "add" ]
	then
		sed -i '' "/^$2 /d" $CONF;
		echo "$2 $3" >> $CONF;
	elif [ "$1" = "delete" ]
	then
		sed -i '' "/^$2 /d" "$CONF";
	elif [ "$1" = "list" ]
	then
		cat $CONF
	elif [ "${ALIAS}" != "" ]
	then
		DIRECTORY="${ALIAS}";
	elif [ "$1" != "" ]
	then
		cd $BASE
		DIRECTORY=$(ls -ld -- */ | awk '{print $10}' | grep "$1");
	else
		DIRECTORY=".";
	fi

	if [ "$DIRECTORY" != "" ]
	then
		cd $BASE
		cd $DIRECTORY
	fi
}