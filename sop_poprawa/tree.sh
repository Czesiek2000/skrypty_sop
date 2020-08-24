#!/bin/bash
# =====================
# Skrypt wyswietlajacy drzewo folderow w katalogu w ktorym znajduje sie plik 
# Drzewo o podanym wygladzie
#|- a/
#|   |-- b/
#|        |--- c/
# 
# =====================
for i in `ls .`
do
    if [ -d $i ]
    then
        echo "|- $i"
        for j in `ls $i`
        do
            echo -e "|   |-- $j"

            if [ -d $j ]
            then
                for k in `ls $j`
                do
                    echo -e "|      |--- $k"
                done
            fi
        done
    fi
done

exit 0