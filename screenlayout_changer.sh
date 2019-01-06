#!/bin/bash
SCREENLAYOUT_PATH=~/.screenlayout/
screens=""
for filename in $(ls $SCREENLAYOUT_PATH)
do
	screens="$filename\n$screens"
done

screenlayout=$(echo -e $screens | rofi -dmenu)
if [ -z $screenlayout ]
then
	exit
fi

exec_path=$SCREENLAYOUT_PATH$screenlayout
sh $exec_path
logging change screenlayout to $exec_path
