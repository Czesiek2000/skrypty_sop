#!/bin/bash
# Napisz skrypt, który z poniższego pliku ekg2-current.tar.gz usunie wszystkie pliki z rozszerzeniem txt. 
# Być może trzeba będzie to zadanie wykonać w kilku krokach: rozpakowanie i rozarchiwizowanie pliku, znalezienie plików i 
# usunięcie ich, zaarchiwzowanie katalogu i kompresja. 

tar xvzf ekg2-current.tar 2> /dev/null # rozpakowane
txt=$(ls -R ekg2-20051019 | grep ".txt$") # szukanie txt w rozpakowanym pliku
for i in $txt
do
    echo "$i"
    rm $i 2> /dev/null
done
tar -zcvf ekg2-test.tar.gz ekg2-20051019 2> /dev/null
rm -r ekg2-20051019

echo "rozpakowano i zapakowano pomyslnie"