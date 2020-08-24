#!/bin/bash

# Napisz skrypt, który zapisze do pliku środkowe linie z wszystkich plików z bieżącego katalogu.

for i in `ls .`
do
    
    if [ -f $i ]
    then
    echo $i
    LINE=$(cat $i | wc -l)
    LINE=$((LINE + 1))
    SRODKOWA=$((LINE / 2))
        cat $i | head -n $SRODKOWA | tail -n 1 >> srodkowe.txt
    else 
        echo "$i katalog"
    fi
done