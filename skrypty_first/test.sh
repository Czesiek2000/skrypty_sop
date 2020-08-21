#!/bin/bash
# zadanie 3
if [ -e $2 ] ;
then
	rm $2
else
	echo "$2 nie istnieje"
fi
for i in `cat $1`
do
	if [[ "$i" == [a-z]  ]] ;
	then
		#echo "wystepuja litery a-z + $i"
		echo -n "$i " >> $2
	else
		#echo "nie wystepuja litery a-z + $i"
		echo -n "$i " >>  $3
	fi
done


