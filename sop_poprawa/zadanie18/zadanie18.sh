#!/bin/bash

#  skrypt pobiera plik jako argument wypisuje linie, jezeli linia jest pusta wypisuje na ekran komunikat Pusta linia

if [ $# -ne 1 ] 
then

    echo "Skrypt potrzebuje argumentu do dzialania"
    echo "usage $0 FILE"
fi

if [ ! -f $1 ]
then
    echo "$1 nie jest plikiem"
else

    cat $1 | while read LINE
    do
        if [[ $LINE =~ ^$ ]]
        then
            echo "Pusta linia"
        else
            echo "$LINE"
        fi
    done

fi

exit 0