#!/bin/bash

# zadanie 11 
cat sample.txt | tail -rn 1 | rev
exit 0
# zadanie 8 
tr ":" "\n" <<< "$PATH"
echo $PATH | tr ":" "\n"
exit 0
# sop3 zadanie 8
cat sample.txt | grep "^s[0-9]" | wc -l

exit 0
# zadanie 2
ls -la $1 | grep "b \| e \| s"

exit 0
# zadanie 1
if [[ $# -eq 0 ]]
 then
	echo "Nie podano argumentu skryptu "
	exit 1
else
	ls -la $1 | grep "^." | wc -l
fi
