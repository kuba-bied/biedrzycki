#!/bin/bash

#Funkcje , podprogramy

#procedura 
function Moja () {
    echo "Procedura"
}
#wywołanie procedury

Moja

x=1
while [ $x -le 10 ]; do
     Moja
x=$[x + 1]
done

#wyrażenia arytmertyczne
echo $[2+2]
echo $((2+2))
x=5
y=2
let suma=x+y
echo ${suma}
#operatory arytmetyczne
# + : dodawanie
# - : odejmowanie
# * : mnożenie
# / : dzielenie
# % : reszta z dzielenia
