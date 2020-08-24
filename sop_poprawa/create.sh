#!/bin/bash

# Tworzenie katalogu o nazwie zadanie z liczba podana jako arugment skryptu z plikiem o takiej samej nazwie 
# ktory ma wklejony shebang na poczatek, i ma wszytskie uprawnienia do uruchomienia skryptu

# ================
# dzialanie uzytkownik podaje zakres liczb np 1 20
# program tworzy foldery o nazwie zadanie(liczba z podanego zakresu) w nim plik zadanie.sh nadaje mu uprawnienia i wkleja #!/bin/bash do 1 lini
if [ $# -ne 2 ]
then
    echo "usage $0 starterNumber endNumber"
    exit 1
else
    for i in $(eval echo {$1..$2})
    do
        # echo $i
        mkdir -p "zadanie$i"
        touch "zadanie$i/zadanie$i.sh"
        echo "#!/bin/bash" >> "zadanie$i/zadanie$i.sh"
        chmod a+x "zadanie$i/zadanie$i.sh"
    done
fi
exit 0

# Sortowanie numerow zadania

for i in `ls $1`
do
    echo $i | grep "^zadanie" | tr "zadanie" " " >> nums.txt
done
sort -n nums.txt
exit 0

# Tworzenie plikow do podanego katalogu
for i in `ls ../`
do 
    numer=$(echo $i | tr "zadanie" " ")
    for j in {11..20}
    do
        for k in $numer
        do
            if [ $k == $j ]
            then
                echo "$k == $j"
                # touch "../zadanie$k/zadanie$k.sh"
                chmod a+x "../zadanie$k/zadanie$k.sh"
            fi
        done
    done
done
exit 0
