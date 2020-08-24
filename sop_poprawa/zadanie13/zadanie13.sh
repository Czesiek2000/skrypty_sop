#!/bin/bash

# Napisz skrypt, który znajdzie plik txt, w podanym katalogu, mający najwięcej linijek tekstu i 
# wypisze środkową linijkę z tego pliku. Sprawdzić czy plik jest do odczytu.
# Wypisywanie rozszerzenia -f2 nazwa pliku -f1 jako opcja cut
# for i in `ls .`
# do
#     echo $i | cut -d "." -f2
# done
# exit 0
maxLine=0
maxFile=""
srodkowa=0
if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje argumentow do dzialania"
    echo "usage $0 DIRECTORY"
    exit 1
fi


for i in `ls $1 | grep ".txt$"`
do
    if [ -f $i ]
    then
        lines=$(cat $i | wc -l)
        lines=$((lines+1))
        echo $lines

        if [ $lines -gt $maxLine ]
        then
            maxFile=$i
            maxLine=$lines
        fi
    else
        echo "W podanym katalogu $1 nie ma plikow txt"
    fi
done
echo "Plik $maxFile posiada najwieksza liczbe lini: $maxLine"

line=$(cat $maxFile | wc -l)
# line=$((line+1))
# line=$((line / 2))
echo $line

# wyswietlenie srodkowej lini
echo "maxline / 2 = $((maxLine / 2))"
# od 16 do 21
# cat $1 | head -n 21 | tail 6
cat $maxFile | head -n $((maxLine / 2)) | tail -n 1

if [ -r $maxFile ]
then
    echo "Plik do odczytu"    
else
    echo "Plik nie jest do odczytu"
fi
exit 0