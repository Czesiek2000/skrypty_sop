#!/bin/bash

# Napisz skrypt, który wyświetli silnie z liczby a. , która jest wprowadzona z klawiatury. Liczba a musi być dodatnia.

echo -n "Podaj liczbe do stworzenia silni: "
read A

if [ $A -gt 0 ]
then
    REZ=1 
    for (( i=1; i<=A; i++)) ; do
        REZ=$((i * REZ ))
    done
    echo "$REZ"
else
    echo "Wprowadzana liczba musi byc dodatnia"
    exit 1
fi

# podobne do cwiczenie6 z tego katalogu oraz 