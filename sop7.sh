#!/bin/bash

WEJSCIE="$1"
WYJSCIE="$2"

echo "Plik wejsciowy ${WEJSCIE} plik wyjsciowy ${WYJSCIE}"

#for (( i=0; i < 10; i++ )) ; 
#do 
	#echo "Hello World" > $2
	#echo "$i" >> $2
#done

for i in `cat $WEJSCIE`
do
	#if [ $IFS -eq "\n"] ;
	#then
		echo "$i" >> $WYJSCIE
	#fi
done


#echo "Plik nie  dziala " > "$WYJSCIE"
