#!/bin/bash

# Napisz skrypt, który w podanym katalogu wybierze pliki .txt i policzy ile razy pojawia się jakiś cytat, czyli tekst będący 
# pomiędzy znakami “ “.

if [ $# -ne 1 ]
then
    echo "usage $0 DIRECTORY"
    exit 0
fi

if [ ! -d $1 ]
then
    echo "$1 nie jest katalogiem"
    exit 0
else
    for i in `ls $1 | grep ".txt$"`
    do
        CYTAT=$(cat $i | grep '".*"' | wc -l | tr -s " ")
        echo "W pliku $i pojawilo sie$CYTAT"
    done
fi