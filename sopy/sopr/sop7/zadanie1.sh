#!/bin/bash
# Napisz skrypt, który co kilka sekund sprawdza czy użytkownik o jakimś loginie zalogował się w systemie 5-krotnie. 
# Jeżeli nie to skrypt zasypia na kilka sekund i sprawdza później. Jak użytkownik się zalogował 5-krotnie to, skrypt się kończy.

UZYTKOWNIK=michalczech
while [ $(who | grep "^$UZYTKOWNIK" | wc -l) -lt 5 ]
do
    echo "*"
    sleep 5
done