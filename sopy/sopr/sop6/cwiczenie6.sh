#!/bin/bash
#  Napisz skrypt, który wyświetli wszystkie silnie od liczby a do liczby b. Liczby a, b muszą być dodatnie.

N="$1"
X="$2"
Y="$3"
RE="^[0-9]+$"

if [ $# -ne 3 ]
then
    echo "usage $0 PODSTAWA A B"
    exit 1
fi

if [[ $1 =~ $RE ]] && [[ $2 =~ $RE ]] && [[ $3 =~ $RE ]] 
then
    echo "$1 i $2 sa liczbami"

    for (( i=X; i<=Y;i++))
    do
        echo "$N ^ $i = $(( $N ** $i ))"
    done

else
    echo "$1 i $2 nie sa liczbami"
    exit 1
fi

exit 0
