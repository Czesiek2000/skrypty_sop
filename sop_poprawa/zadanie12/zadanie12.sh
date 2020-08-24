#!/bin/bash

# Napisz skrypt, który pobierze listę katalogów do utworzenia, utworzy te katalogi wraz z katalogami nadrzędnymi, 
# i w każdym pliku otworzy plik txt w którym będzie zapisana pełna ścieżkę jego katalogu.

# Tworzenie katalogow podanych jako argument skryptu
if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje argumentow do dzialania"
    exit 1

fi

for i in $@
do
    if [ -d $i ]
    then
        echo "Folder $i istnieje"
    else
        echo "Folder $i nie istnieje"
        mkdir -p $i
        # Sprawdzenie czy podano folder czy folder i podfolder
        #TODO: nie tworzy plikow w podkatalogu
        if [[ $i =~ "/" ]]
        then
            touch "$i.txt"
            echo $(pwd) >> "$i.txt"
        else
            touch "$i/$i.txt"
            echo $(pwd) >> "$i/$i.txt"
        fi
    fi
    shift 1
done
exit 0

# Tworzenie katalogow podanych przez uzytkownika z uzyciem read
echo -n "Podaj katalogi do utworzenia: "
read KATALOGI
for i in $KATALOGI
do
    echo $i
    if [ -d $i ]
    then
        echo "Katalog $i juz istnieje"

    else 
        mkdir $i
        touch "$i/$i.txt"
        echo $(pwd) > "$i/$i.txt"
    fi
    
done

exit 0