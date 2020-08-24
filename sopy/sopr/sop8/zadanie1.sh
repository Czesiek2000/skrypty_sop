#!/bin/bash

# Napisz skrypt (lub polecenie), który wypisze nazwy tych plików z katalogu bieżącego, których treść nie zawiera na początku 
# linii tekstu /*main*/. Mają być wypisane wyłącznie nazwy.

for i in `ls .`
do
    inc=$(cat $i | grep "^main$")
    # cat $i | grep "^main"

    if [ -z $inc ]
    then
        echo "$i nie zawiera $inc"
    else
        echo "$i zawiera $inc"
    fi
done