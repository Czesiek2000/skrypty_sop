#!/bin/bash

echo -n "Podaj A "
read A
echo "Podales $A"
if [ "$A" -eq "0" ]; then
    echo "Nie ma rownania kwadratowego"
    exit 0
else 
    echo -n "Podaj B "
    read B
    echo "podales $B"
    echo -n "Podaj C "
    read C
    echo "podales $C"
    DELTA=$(( ($B)*($B)-4*($A)*($C) ));

    echo "Delta ${DELTA}"

    if [ $DELTA -lt 0 ]
    then
        echo "$DELTA mniejsza od zera brak rozwiazania rownania kwadratowego"
    elif [ $DELTA -gt 0 ]
    then
        echo "$DELTA wieksza od zera"
        PIERWIASTEK_KWADRATOWY=$(echo "scale=2;sqrt($DELTA)" | bc)
        echo $PIERWIASTEK_KWADRATOWY

        X1=$(echo "scale=2;(-$b-sqrt($DELTA))/2*$a" | bc)
        # X2=$(( ( -($B) -($PIERWIASTEK_KWADRATOWY) ) / 2*($A) ))
        X2=$(( (-$B - $PIERWIASTEK_KWADRATOWY) / (2*$A) ))

        echo "Rozwiazaniem rownania $A x^2 + $B x + $C jest x1=$X1 i x2=$X2"
    else
        echo "$DELTA rowna zero"
        X0=$(( (-($B) ) / 2*($A) ))
        echo "Miejsce zerowe wynosi $X0"
    fi
fi


exit 0