#!/bin/bash
# Sumowanie liczb znajdujacych sie w pliku

if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje argumentow do dzialania"
    exit 1
fi
if [ ! -f $1 ]
then
    echo "Plik $1 nie istnieje "
    exit 1
else
    SUM=0 
    for LICZBA in `cat $1`
    do
        if [[ $LICZBA =~ [0-9] ]]
        then
            SUM=$((SUM+LICZBA))
        fi
    done
fi
echo $SUM 
exit 0