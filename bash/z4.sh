#!/bin/bash

#operatory logiczne
# -eg : == równy
# -gt : >  większy
# -lt : <  mniejszy
# -le : <= miejszy lub równy
# -ge : >= wiekszy lub równy
# != : równy

#warunek prosty
if [ 5 -gt 4 ]; then
   echo true
else
   
   echo false
fi
#warunek złożony
#operatuory logiczne
# && : AND i
# || : or lub
# !  : nie

if [ 5 -eq 5 ] || [ 5 != 5 ]; then
    echo true
else
    echo false
fi


echo "operator logiczny NOT !"
if [ 5 -eq 5 ]; then
    echo true
else
    echo false
fi

if [ 5 -gt 5 ]; then
   echo "1"
elif [ 5 -eg 5 ]; then
     echo "2"
else
   echo "3"
fi


echo "Instrukcja wielokrotnego wyboru case"

#pobieranie danych z klawiatury do zmninej
echo -n "Podaj miesiąc [1..12]: "
read month

case ${month} in
"1") echo "January" ;;
"2") echo "February" ;;
"3") echo "March" ;;
"4") echo "April" ;;
"5") echo "May" ;;
"6") echo "June" ;;
"7") echo "July" ;;
"8") echo "August" ;;
"9") echo "September" ;;
"10") echo "October" ;;
"11") echo "November" ;;
"12") echo "December" ;;

esac

