#!/bin/bash
# Mamy plik o zawartości jak poniżej:
# 100 300
# 20 10
# 11 0
# 55
# 11 11a11
# 333 3

# Każda linia zawsze składa się z dwóch kolumn. W każdej kolumnie mamy dwa teksty oddzielone spacją. 
# Napisz skrypt, który pobierze nazwę takiego pliku i wykona operacje matematyczne (+-*/) na kolejnych parach liczb odczytanych 
# z naszego pliku. Wyniki mają zostać zapisane do pliku, którego nazwa jest przekazana jako drugi parametr i 
# dodatkowo wyświetlone na ekran. Trzeba wyświetlić informacje o błędach - dlaczego zadanej linii nie możemy przetworzyć, 
# o ile taka sytuacja wystąpiła.

cat "num.txt" | while read a b
do
    if [[ $b =~ [a-z] ]]
    then
        echo "$b nie jest liczba"

    elif [ "$b" == 0 ]
    then
        echo "$b jest 0"
    else
        div=$((a / b))
    fi
    # add=$((a+b))
    # sub=$((a-b))
    # mult=$((a*b))
    # if [ "$b" == 0 ]
    # then
    #     echo "Dzielenie przez 0"
    # else
    #     if [[ $b =~ "[a-z]" ]]
    #     then
    #         echo "$b nie jest liczba"
    #     else
    #         div=$((a/b))
    #         echo "Dzielenie $a / $b"
    #     fi
    # fi

    # echo "$a + $b = $add"
    # echo "$a - $b = $sub"
    # echo "$a * $b = $mult"
done
exit 0
