#!/bin/bash
# Sprawdzenie uzytkownika ktory jest zalogowany w systemie i zapisanie do pliku 
# who | cut -d " " -f1 > user.txt

# Napisz skrypt, który sprawdzi w pliku podanym w argumencie czy są tam wspomniani aktualnie zalogowani użytkownicy 
# i ile razy występuje ich login w pliku.


if [ $# -eq 0 ] 
then
    echo "Skrypt potrzebuje argumentu do dzialania"
    exit 1
fi

if [ ! -f $1 ] 
then
    echo "$1 nie jest plikiem"
    exit 0

else 
    user=$(who | cut -d " " -f1)

    for i in `cat $1`
    do
        ilosc=$(echo $i | grep "$user" | wc -l)
    done
    echo "$user wystepuje $ilosc razy"

fi

exit 0