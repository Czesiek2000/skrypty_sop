#!/bin/bash
# Napisz skrypt, w który wyświetla wszystkie swoje argumenty w odwrotnej kolejności.
# Przyklad: 
# bash $ ./skrypt.sh ALA ma kota
# kota ma ALA

if [ $# -eq 0 ]
then
    echo "Skrypt potrzebuje argumentu do dzialania"
    exit 1
else
    # Do odwracania ciagu cyfr
    # ARGS="$@"
    # for i in "$ARGS"; do
    #     echo "$i" | rev
    # done
    
    # for (( i = $# ; i > 0; i-- ))
    # do
    #     echo "${!i}"
    # done
fi

exit 0