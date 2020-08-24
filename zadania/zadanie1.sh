#!/bin/bash
# zadanie 1
# Napisz skrypt ktory wyswietli łaczna sume plikow znajdujacych sie bezposrednio w katalogu podanym jako pierwszy i 
# jedyny argument skryptu, ktorych nazwa nie zaczyna sie od cyfry
if [ $# -gt 1 ]
then 
	echo "Podano za duzo argumentow"
	exit 0
fi

if [ $# -eq 0 ] 
then 
	echo "Nie podano zadnego argumentu skryptu"
	exit 0
fi

if [ -d $1 ]
then 
	echo "$1 jest katalogiem"
else 
	echo "$1 nie jest katalogiem"
fi

if [ $# -eq 1 ] 
then 
	ls $1 | grep "^[a-z]" | wc -l
fi
