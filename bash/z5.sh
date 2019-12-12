#!/bin/bash

#loop for -pentla

for x in  j d t
do
    echo ${x}
done

for plik in *
do
    echo ${plik}
done

for plik in *
do
  echo ${plik}
done
#i++ - i=i+1
# i=1 1<=3-> true i=1+1
# i=2 2<=3 -> ture i=1+1
# i=3 3<=3 --> ture 1=3+1
# i=4 4<=3 ---> ture false koniec 
for ((i=1; i<=3; i++))
do
    echo ${i}
done
#loop while
j=1

while [ ${j} -lt 50 ];do
    echo -ne  01
    i=$[j+1]
donewhile [ ${j} -lt 50 ];do
    echo -ne  01
    i=$[j+1]
done