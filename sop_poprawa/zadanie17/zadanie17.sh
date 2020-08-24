#!/bin/bash

# Napisz skrypt, który przyjmie plik z danymi w formacie:
# k a j
# a d
# a l
# i n n i w
# i zapisze do pliku podanego przez użytkownika palindromy z tych danych, czyli na wyjściu powinniśmy dostać plik z danymi:
# kajak
# ada
# ala
# inniwinni

if [ $# -ne 2 ]
then 
    echo "Skrypt potrzebuje argumentow do dzialania"
    echo "usage $0 FILEIN FILEOUT"
    exit 1
fi

if [ ! -f $1 ] && [ ! -f $2 ]
then
    echo "$1 i $2 nie sa plikami"
    exit 1
else
    echo "palindrom made" > $2
    cat $1 | while read LINE
    do
        revL=$(echo $LINE | rev)
        echo "${LINE%?}$revL" >> $2
    done
fi

exit 0