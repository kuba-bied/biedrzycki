#!/bin/bin

function loadUsers() {
    echo "loadUsers"
}
function showUsers() {
    echo "showUsers"
}
function addUsers() {
    echo "addUsers"
}
function delUsers() {
    echo "delUsers"
}
function acceptRemoteLogin() {
    echo "loadUsers"
}
function denieRemoteLogin() {
    echo "loadUsers"
}
function help() {
    cat << EndOfMessage
    Opis opcji 
}


function Quit() {
    exit 0
}

#menu

select option in LU SU AU DU ARL DRL HELP QUIT
do 

    case ${option} in
    "LU") loadUsers ;;
    "SU") showUsers ;;
"AU") addUsers ;;

"Du" ) delUsers ;;
   
"ARL") accptRemoteLgin ;;

"DRL") deineRemoteLogin ;;
"HELP")  ;;
"QUIT") loadUsers ;;
