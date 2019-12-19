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