# $1 - 1-9 wartosci argumentow podawane przy uruchomieniu skryptu
# $@ - All arguments, starting from first (strings)
# $# - Number of arguments (number)
# $* - All arguments

# przypisanie zmiennej i wypisanie jej
NAME="IMIE"
echo $NAME
echo "Imie ${NAME}"



# if 
if [[ -z "$string" ]]; then
  echo "String is empty"
elif [[ -n "$string" ]]; then
  echo "String is not empty"
fi

if [ $1 -eq 1 ]
then
    echo $1
else 
    echo "not $1"
fi

# loops 
# basic for loop
for i in /etc/rc.*; do
  echo $i
done

# c style for loop
for ((i = 0 ; i < 100 ; i++)); do
  echo $i
done

# number in range
for i in {1..5}; do
    echo "Welcome $i"
done

while true; do
  ···
done

# loop to read line 
cat file.txt | while read line; do
  echo $line
done


#!/bin/bash
# zadanie 3 - zapisanie do pliku 1 liter do 2 znakow
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


