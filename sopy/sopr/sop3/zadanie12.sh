#!/bin/bash
# Napisz polecenie, który policzy wszystkie pliki z katalogu /bin, które:

# zawierają w nazwie literę a.
# ls /bin | grep "a"

# mają nazwy składające się z dwóch znaków.
# ls /bin | grep "^[a-z][a-z]$" # dziala
# ls /bin | grep "^..$" # dziala
# ls /bin | grep "^[a-z]{2}$" # nie dziala

# mają nazwy składające się z dwóch liter lub trzech znaków.
# ls /bin | grep "^[a-z][a-z]\|...$" # chyba zle dziala bo wyswietla 5 znakow
# cat test.txt | grep "[vV]ivek[^0-9]" # nie dziala

# mają nazwy składające się z dwóch liter lub czterech znaków.
# ls /bin | grep "^[a-z][a-z]\|....$" # chyba zle

# mają nazwy składające się wyłącznie z małych liter.
ls /bin | grep "^[a-z]*$"