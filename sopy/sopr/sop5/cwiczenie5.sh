#!/bin/bash

# Napisz skrypt, który poda liczbę wszystkich katalogów w poddrzewie zaczynającym się od katalogu, którego nazwa zostanie 
# podana jako pierwszy argument.

if [ $# -ne 1 ]
then

    echo "Skrypt potrzebuje argumentow do dzialania"
    echo "usage $0 DIRECTORY"
    exit 1
fi

if [ ! -d $1 ]
then
    echo "$1 nie jest katalogiem"
else
    KATALOG=$(find . -type d 2>/dev/null | wc -l)
    echo "Katalogow w poddrzewie jest $KATALOG"
    for i in `ls -R $1`
    do
        if [ -d $i ]
        then
            echo "$i/"
        fi
    done
fi