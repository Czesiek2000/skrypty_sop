# Dla kazdego z katalogow podanych jako argumenty ( bez zaglebiania sie w podkatalogi ) zapisujemy sumy liczb z kazego kolejnego 
# pliku znajdujacego sie w tym katalogu w kolejnych liniach jednego, wspolnego dla danego katalogu, pliku tekstowego o nazwie 
# calosc.txt( polozonego w analizowanym katalogu). Zakladamy ze wszyskie linie pojedynczego sumowania za wyjatkiem tych 
# zaczynajacych sie od symbolu # ( te linie musimy pominac) zawieraja jedna liczbe nateralna zas suma tych liczb zapisa jest w 
# jednej lini w pliku calosc.txt. Jesli ktorys z argumentow okaze sie nie byc katalogiem wyswietlamy komunikat i przechodzimy 
# do kolejnych argumentow. Nalezy wykorzystac podprogramy i uwzglednic spacje w nazwach plikow. Na koncu dzialania skryptu 
# wyswietlamy, ile katalogow utworzono.

# Przyklad :
# wywolanie skryptu ./zad3.sh kat1
# W katalogu 1 znajduja sie dwa pliki plik1.txt oraz plik2.txt postaci:
# plik1.txt
# 3
# 4
# 5
#8
#Ala ma kota
# 1
# 2
# 5


# plik2.txt
# 10
# 1
# 10
# 9
# 2
#Ola ma psa
# 8
# 7
# 3

# Wtedy plik calosc.txt utworzony w katalogu kat1 wyglada nastepujaco
# 20
# 50

# Komunikat: Przetworzono 1 katalog/owi
for i in $@
do
	#ls $i | grep ".txt$" 
	cat $(ls $i | grep ".txt$" | tr -d " ") 
	#cat $zmienna
done

exit 0
R="^#"
SUMAP=0
for i in $@
do
	suma=0
	#echo "${i}/*"
	(for j in `ls $i`
	do
		echo "Jestem w $j"
		cat "${i}/$j" | while read LINE
		do
			if [[ $LINE =~ $RE ]]
			then
				echo "Ta linia ma # + $LINE"
			else
				echo $LINE
	#			suma=$(( suma + LINE))
				SUMAP=$(( SUMAP+ LINE))
				echo "W pliku $j suma = $SUMAP" > calosc.txt
			fi
		done
	done)
	echo "Suma $SUMAP"
done
echo "Suma w pliku $SUMAP"
