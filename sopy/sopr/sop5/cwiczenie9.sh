#!/bin/bash

# Napisz skrypt, który wypisze, ile razy jest zalogowany użytkownik, którego login zapisany jest w zmiennej o nazwie UZYTKOWNIK.
# Zmienną tą trzeba najpierw utworzyć i wpisać tam określony login np: UZYTKOWNIK="asmyk".

UZYTKOWNIK=michalczech
L=$(who | grep "^$UZYTKOWNIK" | wc -l)
echo "$UZYTKOWNIK zalogowany jest $L razy"