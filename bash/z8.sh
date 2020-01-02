#!/bin/bash
#definicjia fukcji f1
function f1() {
    echo  -n "Podaj nazwe urzytkownika"
    read
}
function f2() {
    echo "f2"
}
function f3() {
    echo "f3"
}


#menu skryptu
select opcjia  in f1 f2 f3 Quit
do
    case ${opcjia} in
    "f1") f1 ;;
    "f2") f2 ;;
    "f3") f3 ;;
    "f4") f4 ;;
done