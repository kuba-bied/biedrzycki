#!/bin/bash

#petla until

i=10

until [ ${1} -eq  10 ]; do
    echo ${i}
    i=$[i+1]
done

#pętla select
echo "Podaj obcje"

select opcja in File Edit Quit
do
    case ${opcja}  in
	"Edit") echo "Wybrano opcje ${opcja}" ;;
	"Edit") echo "Wybrano opcje ${opcja}" ;;
	"Quit") exit ;;
	*) echo "Error" ;;
    esac
done