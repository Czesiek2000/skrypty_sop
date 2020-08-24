#!/bin/bash
# Napisz skrypt, w którym użytkownik podaje numer argumentu, który ma być wyświetlony na ekranie, a 
# następnie wyświetlamy ten argument.

# Podanie argumentu z pomoca shift
echo "Podaj numer argumentu"
read ARG

ARG=$((ARG - 1))
shift "$ARG"
echo "$1"

exit 0

if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje argumentow do dzialania"
    exit 0
fi
echo "Podaj numer argumentu: "
read a

if [[ ! $a =~ [0-9] ]]
then
    echo "Wprowadzona wartosc nie jest liczba"
    exit 1
fi

if [ -z $a ]
then
    echo "Podano pusty arugment"
    exit 1
else
    echo "Argument na pozycji $a to ${!a}"
fi
