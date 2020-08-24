#!/bin/bash

# Napisz skrypt, który pobierze jako argument nazwę katalogu i:
#     - wyświetli nazwy wszystkie plików z tego katalogu (wyłącznie nazwy)
#     - policzy i wyświetli informacje ile tych plików tam jest
#     - policzy i wyświetli informacje ile tam jest katalogów
#     - policzy i wyświetli informacje ile tam jest w sumie katalogów i plików

# Skrypt ma działać wyłącznie jeżeli zostanie uruchomiony z jednym argument, który jest katalogiem do odczytu.

if [ $# -ne 1 ]
then
    echo "Skrypt potrzebuje tylko jednego argumentu do dzialania"
    exit 1
fi

if [ ! -d $1 ]
then
    echo "Katalog nie jest do odczytu"
else
    # wyświetli nazwy wszystkie plików z tego katalogu (wyłącznie nazwy)
    # for i in `ls $1`
    # do
    #     echo "$i"
    # done
    ls "$1"

    # policzy i wyświetli informacje ile tych plików tam jest
    licznik=0
    for i in `ls $1`
    do
        if [ -f $i ]
        then
            # echo "$i"
            licznik=$(( licznik+1 ))
        fi
    done
    echo "W katalogu $1 znajduje sie $licznik plikow"

    # policzy i wyświetli informacje ile tam jest katalogów
    licznik2=0
    for i in `ls $1`
    do
        if [ -d $i ]
        then
            # echo "$i"
            licznik2=$(( licznik2+1 ))
        fi
    done
    echo "W katalogu $1 znajduje sie $licznik2 katalogow"

    # policzy i wyświetli informacje ile tam jest w sumie katalogów i plików
    echo "W katalogu $1 znajduje sie $licznik plikow i $licznik2 katalogow, w sumie $(( licznik + licznik2 )) elementow "
fi