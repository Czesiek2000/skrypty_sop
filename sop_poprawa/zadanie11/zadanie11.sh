#!/bin/bash
# Napisz skrypt który pobierze od użytkownika plik .txt i przepisze do nowego pliku, podanego przez użytkownika, 
# wszystkie linijki w kolejności alfabetycznej z tą różnicą że słowa będą w odwrotnej kolejności.

if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje argumentow do dzialania"
fi

if [ ! -f $1 ]
then
    echo "Plik $1 nie istnieje"
fi

if [ ! -f $2 ]
then
    echo "Plik $2 nie istnieje"
fi

if [[ $1 =~ .txt$ ]]
then
    echo "Podany plik jest .txt"
    
    cat "$1" | sort | rev > $2
    echo "Sortowanie zakonczone, zapisane do plik $2"
else
    echo "Podany plik nie jest .txt"
fi

exit 0