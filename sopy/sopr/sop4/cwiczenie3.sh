#!/bin/bash
# Napisz skrypt, który pobierze jako argument 3 liczby i 
#     - sprawdzi czy są to liczby (mogą być ujemne) i jak tak to:
#     - wyznaczy sumę tych liczb
#     - wyznaczy największą z nich
#     - wyznaczy najmniejszą z nich  
#     - wyznaczy ilość cyfr w największej z liczb

# Skrypt ma działać wyłącznie jeżeli zostanie uruchomiony z trzema argumentami, które są liczbami - uwaga liczby mogą być ujemne..


RE="^[0-9]+$"
# Sprawdzenie czy zostaly podane 3 argumenty
if [ $# -ne 3 ]
then
    echo "Skrypt potrzebuje 3 liczby jako argumenty do dzialania"
    echo "usage $0 LICZBA1 LICZBA2 LICZBA3"
    exit 1

else
    # Sprawdzi czy są to liczby (mogą być ujemne) i jak tak to:
    # for i in $@
    # do
    #     if [[ $i =~ ^[0-9]+$ ]]
    #     then
    #         echo "Argument $i jest liczba"
    #     else
    #         echo "Argument $i nie jest liczba"
    #     fi
    # done

    if  [[ $1 =~ $RE ]] && [[  $2 =~ $RE ]] && [[ $3 =~ $RE ]]
    then
        echo "Argumenty są liczbami"
        # Wyznaczy sumę tych liczb
        SUMA=0
        for j in $@
        do
            # 4 sposoby dodawania liczb
            # SUMA=$((SUMA + j))
            # SUMA=$(expr $SUMA + $j )
            # (( SUMA=$SUMA + $j ))
            let "SUMA=$SUMA+$j"
        done
        echo "Suma liczb = $SUMA"

        MAX=0
        MIN=$1
        for k in $@
        do
            # Wyznaczy największą z nich
            if [ $k -gt $MAX ]
            then 
                MAX=$k
            fi

            # Wyznaczy najmniejszą z nich 
            if [ $k -lt $MIN ]
            then
                MIN=$k
            fi
        done
        echo "Najwieksza liczba z $@ to $MAX a najmniejsza to $MIN"

        # Wyznaczy ilość cyfr w największej z liczb
        CYFRY=${#MAX}
        echo "$MAX posiada $CYFRY znakow"
    else
        echo "Argumenty nie sa liczbami"
    fi
fi

