#!/bin/bash
# Mamy plik jak poniżej:

# 1 2 3 4 5
# 4 3 2 3 4 5 4 3
# 2 2 2 2 22 3 34 4 4 5 5 5
# d 3 43 54 5 3

# Napisz skrypt, który pobierze nazwę takiego pliku jako pierwszy argument i wyznaczy sumę (opcja -s) tych liczb i/lub iloczyn 
# (opcja -i) tych liczb.

if [ ! -f $1 ]
then
    echo "$1 nie jest plikiem"
fi

if [ $# -ne 2 ]
then
    echo "Skrypt potrzebuje argumentu do dzialania"
    echo "usage $0 PLIK -[s/i] "
    exit 1
else
    suma=0
    ilo=1
    if [ "$2" == "-s" ]
    then
        for i in `cat $1`
        do
            string+=$i" "
            suma=$(( suma + i ))	
        done
        
        echo $suma
    fi

    if [ "$2" == "-i" ]
    then
        for j in `cat $1`
        do
            if [[ $j =~ [0-9] ]]
            then
                string+=$j" "
                # ilo=$(echo $ilo*$j | bc)
                ilo=$(( j * ilo ))
            else
                echo "$j nie jest liczba"
            fi
        done
    fi
    echo $ilo
    echo "Wszystkie elementy z pliku $1 to: $string"

    if [ "$2" == "-si" ]
    then
        echo "Suma liczona jest rowna $suma a iloczyn rowny jest $ilo"
    fi
fi
exit 0
