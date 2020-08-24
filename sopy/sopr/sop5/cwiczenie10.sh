#!/bin/bash

# Napisz skrypt, który będzie czekał, aż użytkownik,  którego login zapisany jest w zmiennej o nazwie UZYTKOWNIK. 
# zaloguje się 3 razy. Jak to nastąpi to skrypt musi się zakończyć.

UZYTKOWNIK=s20613
while [ $(who | grep "^$UZYTKOWNIK " | wc -l)  -lt 3 ] ; do
        echo -n '*'
        sleep 1
done