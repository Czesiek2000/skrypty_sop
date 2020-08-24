#!/bin/bash

# Napisz skrypt, który policzy w każdym pliku w podanym katalogu ile jest w nim dat w formacie 2/05/2019 a ile w formacie 2 maj 2019.
cat "date2.txt" | grep "^[0-9] [a-z][a-z][a-z][a-z][a-z][a-z][a-z] [0-9][0-9][0-9][0-9]$"

exit 0
slash=0
long=0

if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje argumentow do dzialania"
    exit 0
fi

for k in $@
do
    if [ ! -d $k ]
    then
        echo "$k nie jest katalogiem"
    fi
done

for dir in "$@" ;
do

    for i in `ls $dir`
    do
        data=$(cat "$dir/$i" | grep "^[0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]$")
        data2=$(cat "$dir/$i" | grep -E "^[0-9] [a-z]{1,7} [0-9]{4}$")
        if [ ! -z "$data" ]
        then
            for dat in $data 
            do
                echo $dat
                slash=$((slash+1))
            done
        fi

        if [ ! -z "$data2" ]
        then
            for a in $data2
            do
                echo "$a"
                long=$((long+1))
            done
        fi
    done
done
echo "dat w formacie d/mm/yyyy wystepuje $slash "

exit 0


