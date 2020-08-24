#!/bin/bash
# Napisz skrypt, który sprawdzi, czy podany argument jest nazwą katalogu i jak tak to go wyświetli wraz ze wszystkimi 
# podkatalogami i policzy rozmiar jego rozmiar w bajtach. Dodatkowo, nazwy wszystkich plików lub katalogów z ustawionym 
# atrybutem wykonywania dla właściciela powinny zostać zapisane do pliku o nazwie, która zostanie podana jako drugi argument. 
# Jeżeli drugiego argumentu nie ma to skrypt ma nic nie robić.

if [ $# -ne 1 ]
then

    echo "usage $0 DIRECTORY"
else
    if [ -d $1 ]
    then
        echo "$1 jest katalogiem"
        ls -R $1 | wc -c
    fi
fi