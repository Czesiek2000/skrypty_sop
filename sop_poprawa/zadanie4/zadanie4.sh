#!/bin/bash
# Napisz skrypt ktory sprawdzi ile razy w podanym pliku .sh pojawia sie linijka skladajaca sie z samego komentarza, uwaga nie liczyc "#!/bin/bash"
kom=0
if [ $# -eq 0 ]
then 
    echo "program potrzebuje do dzialania argumentu z plikiem .sh"
    exit 0
else
    if [[ "$1" =~ .sh$ ]]
    then
        for i in `cat $1`
        do
            echo "$i" | egrep "^#"
        done
    else 
        echo "Prosze podac plik z rozszerzeniem .sh"
        exit 0
    fi
fi

exit 0