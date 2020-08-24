#!/bin/bash
# W katalogu podanym przez uzytkownika wybierz pliki .html i podaj dla kazdego ile linijek zawiera czesc <body></body>
for i in `ls $1 | grep ".html$"`
do
    tag="body"
    lines=$(cat "$1/$i" | sed -n "/<$tag>/,/<\/$tag>/p" | wc -l)
    lines=$((lines-2))
    echo "$lines miedzy tagiem <$tag> a </$tag> w pliku $1/$i"
done

exit 0