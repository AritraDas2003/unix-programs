#!/bin/bash

while true
do
    echo "----- MENU -----"
    echo "1. Present Working Directory"
    echo "2. Current Date and Time"
    echo "3. Number of Users Logged In"
    echo "4. PID of Current Shell"
    echo "5. Contents of /etc/passwd"
    echo "6. Exit"

    echo "Enter your choice:"
    read ch

    case $ch in
            1)
                    pwd
                    ;;
            2)
                    date
                    ;;
            3)
                    who| wc -l # wc- word ccount -l becouse we are counting the no of lines of the user = total no os users
                    ;;
            4)
                    echo $$ # $$ shows pid of current shell
                    ;;
            5)
                    cat /etc/passwd
                    ;;
            6)
                    exit
                    ;;
            *)
                    echo "Invalid Choice"
                    ;;
    esac # reverse of case to end switch case

done