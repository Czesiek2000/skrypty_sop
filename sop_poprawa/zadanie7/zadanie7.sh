#!/bin/bash
# Napisz skrypt, który pobierze jako argument plik z datami w formacie:
# 1/4/1999
# 3/5/2020
# i przepisze dane do nowego pliku z tymi samymi datami ale w formacie:
# D1 M4 R1999
# D3 M4 R2020

if [ $# -eq 0 ]
then
	echo "Skrypt potrzebuje argumentu do dzialania"
	exit 0
fi

if [ -f $1 ]
then
	cat "$1" | while IFS="/" read d m y
	do
		echo "D$d M$m R$y"
	done
else 
	echo "Plik $1 nie istnieje"
	exit 0
fi
exit 0