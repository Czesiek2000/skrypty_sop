#!/bin/bash
# Napisz skrypt, który wyświetli zawartość plików, z podanego katalogu, które mają w nazwie przynajmniej 3 litery “a”. 
# Litery nie muszą być jedna po drugiej, może być zarówno wielka “A” jak i mała “a”.

if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje argumentow do dzialania"
    exit 0
fi

if [ ! -d $1 ]
then
    echo "$1 nie jest katalogiem"
    exit 0
fi

for i in `ls $1 | egrep "[a|A]{3,}"`
do
    cat $i 
    # echo $i
done

exit 0