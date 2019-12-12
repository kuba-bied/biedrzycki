#!/bin/bash

#cystowanice "" double quote

echo -e "Polecenie  \t ls\n"
#użycie

echo "wynik ls: `ls`"

#apostrof single quote
echo  'Polecenie \t ls\n'

#zmiena
x=10




echo "Zmiena  x: ${x}"    
echo 'Zmiena  x: ${x}'

#pwd

WD=`pwd`
echo ${WD}

#zmiene tablicowe
tab=(1 3 5)



echo ${tab[0]}
echo ${tab[1]}
echo ${tab[2]}
#ilość elementów tablicy

echo "Ilość elementów: ${#tab[@]}"

#modifikacja wartości w zmienej 
tab[2]=10

echo ${#tab[@]}
