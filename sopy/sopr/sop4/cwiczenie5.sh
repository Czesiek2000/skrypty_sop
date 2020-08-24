#!/bin/bash

# Napisz skrypt, który pobierze jako argument 3 liczby i 
#     - sprawdzi czy są to liczby (mogą być tylko dodatnie) i jak tak to:
#     - wyznaczy iloczyn tych liczb
#     - wyznaczy sum minimalnej i maksymalnej liczby z nich pod warunkiem że są one różne od siebie
#     - wyznaczy ilość znaków podanych do skryptu bez spacji.


# Skrypt ma działać wyłącznie jeżeli zostanie uruchomiony z trzema argumentami, które są liczbami dodatnimi.

RE="^[0-9]+$"
# Sprawdzenie czy skrypt dostal dobra ilosc argumentow
if [ $# -ne 3 ]
then
    echo "Skrypt potrzebuje 3 liczby jako argumenty do dzialania"
    echo "usage $0 LICZBA1 LICZBA2 LICZBA3"
    exit 1
else
    # Sprawdzi czy są to liczby (mogą być tylko dodatnie) i jak tak to:
    if [[ $1 =~ $RE ]] && [[ $2 =~ $RE ]] && [[ $3 =~ $RE ]]
    then
        ILOCZYN=0
        # Wyznaczy iloczyn tych liczb
        for i in $@
        do
            ILOCZYN=$((ILOCZYN+i))
        done
        
        echo "Iloczyn liczb $@ to $ILOCZYN"

        # Wyznaczy sum minimalnej i maksymalnej liczby z nich pod warunkiem że są one różne od siebie
        MAX=0
        MIN=$1

        # Wyznacznie min, max
        for j in $@
        do
            if [ $j -gt $MAX ]
            then
                MAX=$j

            fi

            if [ $j -lt $MIN ]
            then 
                MIN=$j
            fi

        done

        if [ $MAX -ne $MIN ]
        then
            echo "Suma max i min to $MAX + $MIN = $((MAX+MIN))"
        else
            echo "$MAX i $MIN nie sa rozne"
        fi

        # Wyznaczy ilość znaków podanych do skryptu bez spacji.
        licznik=0
        for i in $@
        do
            licznik=$((licznik+1))
        done

        echo "Podano do skryptu $licznik liczb bez spacji"
    else
        echo "$@ to nie sa liczby"
    fi
fi

