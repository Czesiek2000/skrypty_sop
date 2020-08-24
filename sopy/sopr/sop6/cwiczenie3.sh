#!/bin/bash
# Napisz skrypt, który policzy liczbę linii w plikach z rozszerzeniem java w wybranym katalogu (podany jako argument skryptu).

if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje argumentow do dzialania"
    exit 1
fi

if [ ! -d $1 ]
then
    echo "$1 nie jest katalogiem"
    exit 1
fi

if [ ! -r $1 ]
then
    echo "$1 nie jest do odczytu"
    exit 1
fi

for i in `ls $1 | grep ".java$"`
do
    LINES=$(cat "$1/$i" | wc -l)
    LINES=$((LINES + 1))
    echo " Plik $i posiada $LINES lini"
done
