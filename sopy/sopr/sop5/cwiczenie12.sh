#!/bin/bash

# Napisz skrypt, który wypisze wszystkie linie z pliku do M-tej do N-tej. Wartości M i N podane są jak argumenty.
M=$1 # 16
N=$2 # 21
# head -n 21 | tail -n 6
if [ $# -ne 2 ]
then

    echo "Usage $0 M-ta N-ta linia w pliku"
    exit 1
fi

TAIL=$(( N - M ))
TAIL=$((TAIL+1))
if [[ $M =~ [0-9] ]] && [[ $N =~ [0-9] ]]
then
    echo "$M i $N sa liczbami"
    cat dlugi.txt | head -n $N | tail -n $TAIL
else
    echo "$M i $N nie sa liczbami"
fi