#!/bin/bash
# Napisz skrypt ktory wypisze ile razy w plikach .txt w aktualnych katalogu pojawia sie slowo podane przez uzytkownika
COUNTER=0
if [ $# -eq 0 ] 
then
    echo "Skrypt potrzebuje argumentu do dzialania"
    exit 0
else
    
    for i in `ls . | grep ".txt$"`
    do
        # echo "$i" >> log.txt
        for j in `cat $i`
        do 
            # echo "$j" >> log.txt
            if [ "$j" == "$1" ]
            then 
                # echo "$1 == $i" >> log.txt
                COUNTER=$((COUNTER + 1))
            fi
        done 
        
        echo "$1 wystapilo $COUNTER razy"

    done
fi

exit 0