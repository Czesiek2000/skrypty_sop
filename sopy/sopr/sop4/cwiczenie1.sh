#!/bin/bash

# Napisz skrypt, który wyświetli wszystkie pliki 
z katalogu /dev, które:
ls /dev
echo "------------------------------"
echo "    - są urządzeniami blokowymi."
ls -l /dev | grep "^b"
echo "------------------------------"
echo "    - na końcu nazwy mają cyfrę."
ls  /dev | grep "[0-9]$"
echo "------------------------------"
echo "    - są urządzeniami blokowymi i na końcu nazwy mają cyfrę."
ls -l /dev | grep "^b.*[0-9]$"
ls -l /dev | grep "^b" | grep "[0-9]$"
echo "------------------------------"

#    - w nazwie mają wyłącznie i dokładnie 3 dowolne znaki.
ls -l /dev | grep "^[a-z][a-z][a-z]$"
ls /dev/???

#    - w nazwie mają nie więcej niż 3 dowolne znaki.
ls /dev | grep "^...$"