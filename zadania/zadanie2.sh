#!/bin/bash
# Dla wszystkich podanych jako argument plikow tekstowych z biezacego katalogu(same nazwy bez sciezek, nalezy zweryfikowac 
# czy sa plikami), nalezy sprawdzic czy istnieja w tym samym katalogu duplikty tych plikow pod innymi nazwami i usunac je 
# (dowiazania twarde traktujemy jako ten sam plik). Jesli ktorys z argumentow okaze sie nie byc plikiem wyswietlamy komunikat i 
# przechodzimy do analizy kolejnych argumentow. Nalezy uwzglednic spacje w nazwach plikow

for i in $@
do
	echo "<$i>"
	if [ -f "$i" ] ;
		then
			echo "$i to plik"
	else 
		echo "$i to nie jest plik"
	fi
done

