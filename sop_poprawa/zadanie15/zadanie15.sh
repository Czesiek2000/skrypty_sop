#!/bin//bash
# Napisz skrypt, który znajdzie w podanym katalogu, we wszystkich plikach .txt, słowa zaczynające się na “a”, 
# mające w środku “b” i kończące na “c”. Następnie posortuj te słowa. 
# Pamiętaj, że słowo może się zaczynać zarówno z wielkiej litery jak i małej. 

for i in `ls $1 | grep .txt$`
do
   cat $i | grep "^[a|A]bc$" | sort
done

exit 0
