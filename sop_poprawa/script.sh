#!/bin/bash
# touch "data/Test.java"
# echo -e "#!/bin/bash\n#To jest komentarz 1\n#To jest komentarz 2\n#\n#\n#" > "data/test.sh"
echo -n "Give folder name: "
read f
echo -n "Give file extension "
read ext
echo -n "Give file names "
read files

if [ -d $f ]
then
    echo "$f exists"
else
    mkdir $f
fi

if [ -z $ext ]
then
    echo "empty extension"
fi

if [[ $ext =~ "." ]]
then
    ext=$ext
else 
    ext=".$ext"
fi

for i in $files
do
    if [[ $i =~ "." ]]
    then
        touch "$f/$i"
    else 
        touch "$f/$i$ext"
        echo "#!/bin/bash" >> "$f/$i$ext"
    fi
done

exit 0
cd data
e="a"
if [ -z "$e" ]
then 
    echo "$e is empty"
else
    echo "$e is not empty"
fi
exit 0


if [ $# -ne 0 ]
then
    echo "$# -ne 0 "
    if [ $# -eq 1 ]
    then 
        echo "$# -eq 1 -> $1"
    elif [ $# -gt 1 ]
    then
        echo "$# -gt 1 -> $2, $3"

    fi
fi
echo "$@"
exit 0
# Roznice miedzy plikami
diff "data/date.txt" "data/date2.txt"

cd ~/Documents
dir=$(pwd)
echo "Jestem tutaj $dir"

exit 0
cat "data/sample.txt" | grep "a\+t"
exit 0

# cat "data/date2.txt" | while IFS=" " read d m y
# do
# 	echo "$d $m $y"
#     let spacja++
# done
# echo "ukos $ukos, spacja $spacja"


# i=20

# while [ $i -ge 5 ]
# do
#   echo Number: $i
#   let "i-=5" 
# done
