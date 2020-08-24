#!/bin/bash
# Napisz skrypt, który pobierze podany przez użytkownika plik .txt, który posiada operacje matematyczne na przykład takie jak:
# 1+1*2
# 10/2-1
# I poda ich prawidłowy wynik.
if [ $# -ne 1 ]
then
    echo "usage $0 File.txt"
    exit 1
fi

if [ ! -f $1 ]
then
    echo "$1 nie jest plikiem"
    exit 1
fi

if [[ $1 =~ .txt$ ]]
then
    cat "$1" | while read a znak b
    do
        wynik=$(($a$znak$b))
        echo "$a $znak $b = $wynik"
    done
else
    echo "$1 nie jes plikiem txt"
fi

exit 0