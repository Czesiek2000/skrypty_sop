#!/bin/bash
# Napisz polecenie, który sprawdzi, czy dany ciąg znaków jest:

# liczbą wyłącznie dodatnią

cat test.txt | grep "^[0-9]"

# liczbą dodatnią lub ujemną
cat test.txt | grep "^[0-9]\|^-"