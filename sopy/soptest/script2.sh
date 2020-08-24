#!/bin/bash

re="[0-9]"

if ! [[ "$@" =~ $re ]] ; then
	echo "not a number"
	exit 1
else 
	sum=$(($1 * $2 * $3))
	echo $sum
fi
max=0
max1=0
min=0

#if [ "$#" < 3 ] ; then 
#	echo "argumenty mniejsze od 3 : $1, $2, $3"
#else 
#	echo "argumenty wieksze od 3"
#	exit 1
#fi
 
if [ "$1" -gt "$2" ] & [ "$1" -gt "$3" ] ; then
	echo "$1 najwieksza"
	max="$1"
elif [ "$2" -gt "$1" ] & [ "$2" -gt "$3" ] ; then
	echo "$2 najwieksza"
	max="$2"
else 
	echo "$3 najwieksza"
	max="$3"
fi


if [ "$1" -lt $max ] ; then
	echo "$1 minimalna"
	min="$1"
elif [ "$2" -lt $max ] ; then
	echo "$2 minimalna"
	min=$2
else 
	echo "$3 minimalna"
	min=$3
fi

#if [ "$1" -gt $min ] & [ "$1" -lt $max ] ; then
#	echo "$1 wieksza od $min i mniejsza od $max "
#elif [ "$2" -gt $min ] & [ "$2" -lt $max ] ; then
#	echo "$2 wieksze od $min i $2 mniejsze od $max "
#else 
#	echo "$3 wieksze od $min i $3 mniejsze od $max" 
#fi
  
echo "$min min"
echo "$max max"
minMax=$((min + max))
echo "suma min i max $min + $max = $minMax"

OIFS="$IFS"
IFS=" "
licznik=0
for i in $@ ; do
	licznik++
	echo $i
done

echo "licznik $licznik"
