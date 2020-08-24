#!/bin/bash

# Napisz skrypt, które wypisze czasy modyfikacji plików w katalogu K - interesuje nas tylko miesiąc. 
# Wyniki mają być zapisane do pliku P. Nazwa katalogu zostanie podana jako pierwszy argument skryptu, a nazwa pliku 
# jako drugi argument skryptu. Jeżeli katalog nie jest do odczytu lub nie da się utworzyć pliku wówczas skrypt zgłasza błąd 
# i raportuje to odpowiednim komunikatem.

# Jeżeli katalog nie jest do odczytu lub nie da się utworzyć pliku - jak to sprawdzic ?

K=$1
P=$2

# MONTH=$(ls -lgG . | tr -s " " | cut -d " " -f 6)
# exit 0
if [ $# -ne 2 ]
then
    echo "usage $0 DIRECTORY FILE_TO_SAVE"
    exit 1
fi

if [ -d $K ]
then
    echo "$K jest katalogiem"
    MONTH=$(ls -lgG $1 | tr -s " " | cut -d " " -f 6)
    echo "$MONTH" >> $P

    if [ $? -ne 0 ]
    then
        echo "Error przy tworzeniu pliku lub katalogu"
    fi

    if [ ! -r $K ]
    then
        echo "Nie da sie odczytac katalogu $K"
    fi

    source ./cwiczenie4.sh $P
else
    echo "$K nie jest katalogiem"

fi