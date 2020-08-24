#!/bin/bash

# Napisz skrypt, który wypisze listę loginów użytkowników danego komputera wraz z nazwą ich katalogu domowego. 
# Wykorzystaj plik /etc/passwd

cat /etc/passwd | tr ":" " " | cut -d " " -f1 | grep "^[a-z]"