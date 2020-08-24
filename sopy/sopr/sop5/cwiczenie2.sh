#!/bin/bash
# Napisz skrypt, które wypisze nazwy katalogów z katalogu głównego (/), które zaczynają się od liter b lub e lub s.
ls / | grep "^b\|e\|s"

# for i in `ls /`
# do
#     echo "$i" | grep "^b\|e\|s"
# done

# obie opcje nie dzialaja poprawnie
