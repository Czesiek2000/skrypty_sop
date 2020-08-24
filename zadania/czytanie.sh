#!/bin/bash

if [ $# -eq 0 ] 
then 
	echo "prosze podac argumenty"
	exit 0
else
	for i in $@
	do
		ls $i
	done
fi

exit 0