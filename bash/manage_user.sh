#!/bin/bash

user_list=(`cat users.txt`)
status="FAIL"

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\e[0m'

function showUsers() {
    echo "showUsers"
    #Ładowanie danych z pliku
    user_list=(`cat users.txt`)
    for (( i=0; i<=${#user_list[@]}; i++ ))
    do
	echo "	${user_list[i]}"
    done
}


function addUsers() {
    echo "addUsers..."
    echo "Are you sure? [y/n]"
    read sure 
    if [ "${sure}" == "y" ]; then
    for user in "${user_list[@]}" 
    do
	sudo useradd ${user} -m -s /sbin/nologin -g "users" 2> /dev/null
	    checkStatusCode
	    #echo "Add user ${user} [${status}]"
	    printf "Add  user %10b %20b\n" "${user}" "[${status}]"
    done
    fi
}


function delUsers() {
    echo "delUsers"
    echo "Are you sure? [y/n]"
    read sure 
    if [ "${sure}" == "y" ]; then
    for user in "${user_list[@]}" 
    do
	sudo userdel -r ${user} 2> /dev/null
	    checkStatusCode
	    #echo  "Remove user ${user} [${status}]"
	printf "Remove user %10b %20b\n" "${user}" "[${status}]"
    done
    fi
}
function checkStatusCode() {
if [ $? == 0 ]; then
		status="Pass"
	    else
		 status="${Red}[FAIL]${NC}"
	    fi
}

function acceptRemoteLogin() {
    echo "acceptRemoteLogin..."
for user in "${user_list[@]}" 
    do
	sudo  usermod -s  /sbin/bash ${user}
	    checkStatusCode
	#echo "Accept remote login for ${user} [${status}]"
	    printf "Accept remote login  %10b %20b\n" "${user}" "[${status}]"
    done
}
function denieRemoteLogin() {
    echo "denieRemoteLogin..."
for user in "${user_list[@]}" 
    do
	sudo  usermod -s  /sbin/nologin ${user}
	    checkStatusCode
	#echo "Denied remote login for ${user} [${status}]"
	    printf "Denied remote login  %10b %20b\n" "${user}" "[${status}]"
    done
}

function help() {
cat << EndOfMessage
    Opis opcji skryptu:
    ------------------
SU -> listowanie urzytkowników|1
AU -> dodawanie urzytkownika  |2
DU -> usuwanie urzytkownika   |3
EndOfMessage
}

function Quit() {
    exit 0
}

#menu
select option in  SU AU DU ARL DRL HELP QUIT
do 
    case ${option} in
	"SU") showUsers ;;
	"AU") addUsers ;;
	"DU" ) delUsers ;;
	"ARL") acceptRemoteLogin ;;
	"DRL") denieRemoteLogin ;;
	"HELP")  help ;;
	"QUIT") Quit ;;
	 *) help
    esac
done