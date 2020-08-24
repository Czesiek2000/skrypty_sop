#!/bin/bash
ls -R -l -g -G -a ~ | grep "^-" |  tr -s ' ' | cut -d' ' -f3

ls -l -g -G /usr/bin | tr -s ' ' | cut -d' ' -f4 # wypisanie wielkosci pliku z katalogu /usr/bin

ls -l -g -G | tr -s ' ' | cut -d' ' -f4 | sort # to co wyzej tylko posortowane

#  Napisz skrypt, który pobierze jako argument 3 liczby i
#    - sprawdzi czy są to liczby (mogą być tylko dodatnie) i jak tak to:
#    - wyznaczy ilorazy tych liczb - żadna nie może być zerem
#    - wyznaczy różnicę maksymalnej i minimalnej liczby pod warunkiem że trzy liczby wejściowe są różne od siebie
#    - wyznaczy ilość znaków podanych do skryptu bez spacji.
# Skrypt ma działać wyłącznie jeżeli zostanie uruchomiony z trzema argumentami, które są liczbami dodatnimi.

#szybka
#[ "$#" -ne 3 ] && exit 1

#wolna
if [ "$#" -ne 3 ] ; then
        exit 1
fi

L1="$1"
L2="$2"
L3="$3"

#grep expr

CZY_LICZBA1=$(expr "$L1" + 0  2> /dev/null | wc -l)
CZY_LICZBA2=$(expr "$L2" + 0  2> /dev/null | wc -l)
CZY_LICZBA3=$(expr "$L3" + 0  2> /dev/null | wc -l)

let SUMA=CZY_LICZBA1+CZY_LICZBA2+CZY_LICZBA3

if [ "$SUMA" -ne 3 ] ; then
        exit 2
fi

#if [ "$L1" -eq 0 -o "$L2" -eq 0 -o "$L3" -eq 0  ] ; then
if [ "$L1" -eq 0 ] || [ "$L2" -eq 0 ] || [ "$L3" -eq 0  ] ; then
        exit 3
fi

let IL1=L1/L1
let IL2=L1/L2
let IL3=L1/L3

echo "$IL1  $IL2  $IL3"

exit 0

# Odwracanie podanych liczb
ARGS="3 2 1"
for ARG in "$ARGS"  ; do
    echo "$ARG"| rev
done
exit 0

# sortowanie plikow z katalogu
ls . | grep "^zadanie" | sort -V