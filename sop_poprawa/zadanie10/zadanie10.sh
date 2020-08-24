#!/bin/bash

# Napisz skrypt, który wyświetli zawartość plików większych niż 4000 bajtów.

for i in `ls $1`
do
    size=$(wc -c $i)
    s=$(echo $size | cut -d " " -f1)
    if [ $s -gt 4000 ]
    then
        echo "$i jest wiekszy niz 4000 bajtow"
    fi
done

exit 0