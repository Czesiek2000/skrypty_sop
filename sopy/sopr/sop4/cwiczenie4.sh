#!/bin/bash

# Napisz skrypt, który pobierze jako argument 3 liczby i 
#     - sprawdzi czy są to liczby (mogą być ujemne) i jak tak to:
#     - wyznaczy sumę tych liczb
#     - wyznaczy środkową z nich pod warunkiem że są one różne od siebie
#     - wyznaczy ilość cyfr w największej z liczb


# Skrypt ma działać wyłącznie jeżeli zostanie uruchomiony z trzema argumentami, które są liczbami - uwaga liczby mogą być ujemne..
RE="^[0-9]+$"
if [ $# -ne 3 ]
then
    echo "Skrypt potrzebuje 3 liczby jako argumenty do dzialania"
    echo "usage $0 LICZBA1 LICZBA2 LICZBA3"
    exit 1
else
    # Sprawdzi czy są to liczby (mogą być ujemne) i jak tak to:
    if [[ $1 =~ $RE ]] && [[ $2 =~ $RE ]] && [[ $3 =~ $RE ]]
    then
        echo "$@ to sa liczby"

        # Wyznaczy sumę tych liczb
        SUMA=0
        for i in $@
        do
            SUMA=$(( SUMA + i))
        done
        echo "Suma liczb = $SUMA"

        # Wyznaczy środkową z nich pod warunkiem że są one różne od siebie
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
        
        # Wyznaczenie srodkowej wartosci z liczb
        for k in $@
        do
            if [ $k -lt $MAX -a $k -gt $MIN ]
            then
                echo "$k jest srodkowa z liczb max $MAX i min $MIN" 
            fi

        done

        # Wyznaczy ilość cyfr w największej z liczb

        C=${#MAX}
        echo "$MAX ma cyfr $C"
    else
        echo "$@ to nie sa liczby"
    fi
fi