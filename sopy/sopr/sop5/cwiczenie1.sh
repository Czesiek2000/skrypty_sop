#!/bin/bash
# Napisz skrypt, które wypisze nazwy plików z całego katalogu, które zaczynają się od kropki, w nazwie posiadają literkę b. 
# Nazwa katalogu zadana jest jako argument skryptu.

# Sprawdzenie argumentu skryptu
if [ $# -ne 1 ]
then
    echo "Skrypt potrzebuje argumentu do dzialania"
    echo "usage $0 DIRECTORY"
    exit 1

fi

if [ -d $1 ]
then
    for i in `ls -a $1 | grep "^[.].b"`
    do
        echo "$i"
    done

fi