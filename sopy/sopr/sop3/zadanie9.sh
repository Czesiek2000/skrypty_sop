#!/bin/bash
# Napisz wyrażenie regularne, które odpowiadają danym literałom:

# słowo zaczyna się na d i kończy na e

# cat test.txt | grep "^de$"

# w słowie jest zoo lub zuu
# cat test.txt | grep "z[oo|uu]"

# słowo zaczyna się na B i kończy na k i ma w środku n 
# cat test.txt | grep "^Bnk$"

# słowo zaczyna się na rozkaz lub Rozkaz, a później jest znak podkreślnika słowo nr i jakaś cyfra 
cat test.txt | grep "^[rR]ozkaz_nr[0-9]"

# słowo które zaczyna się od a i kończy się na om, a pomiędzy jest jedna litera lub dwie 
# cat test.txt | grep "^a[a-z]\|[a-z]{2}om$" # moze zle dzialac