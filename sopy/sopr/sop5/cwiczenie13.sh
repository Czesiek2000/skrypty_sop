#!/bin/bash
# Napisz skrypt, który wypisuje "środkową" linię pliku (może wymagać przynajmniej kilku kroków).

if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje argumentow do dzialania"
    echo "usage $0 FILE"
    exit 0
fi


if [ ! -f $1 ]
then
    echo "$1 nie jest plikiem"
else
    echo "$1 jest plikiem"

    LINES=$(cat $1 | wc -l)
    LINES=$((LINES+1))
    LINES=$((LINES / 2 ))
    echo "$1 posiada $LINES linie"

    cat $1 | head -n $LINES | tail -n 1
fi