#!/bin/bash

# Napisz skrypt, który pobierze jako argument 3 liczby i 
#     - sprawdzi czy są to liczby (mogą być tylko dodatnie) i jak tak to:
#     - wyznaczy ilorazy tych liczb - żadna nie może być zerem
#     - wyznaczy różnicę maksymalnej i minimalnej liczby pod warunkiem że trzy liczby wejściowe są różne od siebie
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
        echo "$@ sa liczbami"
        # Wyznaczy ilorazy tych liczb - żadna nie może być zerem
        if [ $1 -ne 0 ] && [ $2 -ne 0 ] && [ $3 -ne 0 ]
        then
            echo "$@ sa rozne od 0"
            ILOCZYN=$(( $1 / $2 / $3 ))
            echo "$1 / $2 / $3 = $ILOCZYN"

            # Wyznaczy różnicę maksymalnej i minimalnej liczby pod warunkiem że trzy liczby wejściowe są różne od siebie
            MAX=0
            MIN=$1

            for i in $@
            do
                if [ $i -gt $MAX ]
                then
                    MAX=$i
                fi

                if [ "$i" -lt $MIN ]
                then
                    MIN=$i
                fi
            done    

            if [ $1 -ne $2 -a $1 -ne $3 -a $2 -ne $3 ]
            then
                echo "Roznica miedzy max $MAX i min $MIN = $(( MAX - MIN ))"
            fi

            #  Wyznaczy ilość znaków podanych do skryptu bez spacji.
            LICZNIK=0
            for j in $@
            do
                LICZNIK=$((LICZNIK+1))
            done    

            echo "Do skryptu podano $LICZNIK cyfr bez spacji"
        else
            echo "Ktoras liczba $@ jest rowna 0"
            exit 1
        fi
    else
        echo "$@ nie sa liczbami"

    fi
fi
