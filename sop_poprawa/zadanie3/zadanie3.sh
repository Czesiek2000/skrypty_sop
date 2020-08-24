#!/bin/bash
# Napisz skrypt, który z aktualnego katalogu pobierze wszystkie pliki .java i sprawdzi czy jest w pliku klasa 
# zgodna z nazwą pliku.
for i in `ls | grep ".java$"`;
do
    # Przejscie po kazdym pliku java i zwrocenie nazwy
    name=$(echo $i | cut -d "." -f1 )
    
    # Grep sprawdzajacy czy w pliku java znajduje sie nazwa pliku lub mozna tez wpisac public class $name jako pattern regex
    g=`grep "$name" $i`
    
    # Grep zwraca dopasowania tylko pusty string w klasie w ktorej jest blad 
    if [ -z "$g" ]
    then 
        echo "plik $i jest zly"
    else
        echo "plik $i jest dobry"
    fi
done
exit 0