#!/bin/bash

suma=0
ilo=1
if [[ "$1" -eq "-s" ]] ;
then
for i in `cat test.txt`
do
	string+=$i" "
	suma=$(( suma + i ))	
done
fi

if [[ "$1" -eq "-l" ]] ;
then
for i in `cat test.txt`
do
	ilo="$(( 3 * i ))"
done
fi
echo $suma
#echo $string
echo $ilo
tmp=2
echo $(( tmp * tmp ))
#exit 0

# tabelka wyswietlajaca numerki sop 6 zadanie 10  
for i in $(seq 1 12);
do
	for j in $(seq 1 12);
	do
		#echo "i $i"
		#echo "j $j"
		echo -n "$(( i * j )) "
	done
echo " "
#done >> out.txt przekazanie danych z petli do pliku
done


exit 0

shift 1
echo $1
echo $2
echo $3
exit 0
for i in $@
do 
	shift "$i"
done

exit 0
# zadanie 2
read -p "Podaj nazwe argumentu " A
echo $A
echo "${!A}"
exit 0
# zadanie 1
for(( i=$#; i>0; i-- ))
do 
	echo "${!i}"
done





