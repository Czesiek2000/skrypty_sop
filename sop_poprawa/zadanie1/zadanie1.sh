#!/bin/bash
# W podanym przez użytkownika katalogu znajdują się pliki txt z listą imion i nazwisk, 
# przepisz do nowego pliku, podanego przez użytkownika, wszystkich których imiona kończą się na a i mają nazwiska 2 członowe, np:Olga Kowalska-Niekowalska
if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje pliku do dzialania"
    exit 0
fi

if [ ! -f $1 ]
then
    echo "plik $1 nie istnieje"
    exit 0
else
    cat "$1" | while read LINE ; do
            echo "$LINE" | grep -e '-.*a$' >> "dwaczlony.txt"
    done
    
fi


exit 0