
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
for user in "${user_list[@]}"
do
	echo "Add user: ${user}"
	useradd ${user} -s /sbin/nologin -g "users"
done
}
function delUsers() {
    echo "delUsers..."
}
function acceptRemoteLogin() {
    echo "acceptRemoteLogin..."
}
function denieRemoteLogin() {
    echo "denieRemoteLogin..."
}
function help() 
{
    cat << EndOfMessage
    Opis opcji skryptu:
    ------------------
SU -> listowanie urzytkowników
AU -> dodawanie urzytkownika
DU -> usuwanie urzytkownika
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