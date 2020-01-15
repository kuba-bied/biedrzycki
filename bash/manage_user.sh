#!/bin/bash

user_list=(`cat users.txt`)

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
	echo "Add user ${user} [ok]"
	sudo useradd ${user} -s /sbin/nologin -g "users"
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
	echo "Remove user ${user} [ok]"
	sudo userdel ${user}
    done
    fi
}


function acceptRemoteLogin() {
    echo "acceptRemoteLogin..."
for user in "${user_list[@]}" 
    do
	echo "Accept remote login for ${user} [ok]"
	sudo  usermod -s  /sbin/bash ${user}
    done
}
function denieRemoteLogin() {
    echo "denieRemoteLogin..."
for user in "${user_list[@]}" 
    do
	echo "Denied remote login for ${user} [ok]"
	sudo  usermod -s  /sbin/nologin ${user}
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