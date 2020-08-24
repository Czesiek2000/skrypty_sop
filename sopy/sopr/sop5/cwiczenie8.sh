#!/bin/bash

# Napisz skrypt, który wypisze liczbę znaków wszystkich ścieżek, które są podane w zmiennej systemowej PATH. 
# Powinny być policzone znaki różne od : i od /.

ARGS="3 2 1"
for ARG in "$ARGS"  ; do
    echo "$ARG"| rev
done
exit 0
tr ":" "\n" <<< "$PATH"
echo $PATH | tr -d ":"  | wc -c

