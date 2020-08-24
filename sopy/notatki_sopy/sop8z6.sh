#!/bin/bash

RE="^#"
for i in `cat $1`
do
	IFS=' '
	if [[ $i =~ "$RE" ]]
	then
		echo "Linia zawiera #"
	else 
		echo $i
	fi
done

for i in `cat $1`
do
	IFS=' '
	echo "$i"
done
