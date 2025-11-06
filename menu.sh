#!/bin/bash

while true;
do
    clear
    echo "==============================="
    echo "  SYSTEM MAINTENANCE MENU"
    echo "==============================="
    echo "1. Backup System"
    echo "2. Update System"
    echo "3. Monitor System"
    echo "4. Exit"
    echo -n "Enter your choice: "
    read choice

    case $choice in
        1) ./backup.sh ;;
        2) ./update.sh ;;
        3) ./monitor.sh ;;
        4) echo "Goodbye!"; exit ;;
        *) echo "Invalid option! Try again."; sleep 2 ;;
    esac
done
