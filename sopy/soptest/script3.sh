#!/bin/bash 

if [[ "$1" == "-s" ]] ; then
    echo "$1 jest parametrem, if"
	echo "$(( $2 + $3 ))"
else
        echo "cos innego"
fi

if [[ "$1" == "-i" ]] ; then
	echo "$1 jest parametrem, if2"
	echo "$(( $2 * $3 ))"
else 
	echo "inna operacja"
fi
exit 1

# tabelka wyswietlajaca numery sop 06 zad 10
for (( i=1; i <= 12; i++ ))
do
	for ((j=1; j <= 12; j++))
	do
		echo -n "$(( $i * $j )) "
	done
echo ""
done

if [[ "$1" -eq "-z" ]] ; then
	echo "$1 jest parametrem"
else 
	echo "cos innego"
fi
