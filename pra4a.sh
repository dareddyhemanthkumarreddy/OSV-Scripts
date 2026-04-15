#!/bin/bash

while true
do
    echo "----------------------------"
    echo "       FILE OPERATIONS      "
    echo "----------------------------"
    echo "1. Copy a file"
    echo "2. Remove a file"
    echo "3. Exit"
    echo "Enter your choice:"
    read ch

    case $ch in
        1)
            echo "Enter source file name:"
            read src
            echo "Enter destination file name:"
            read dest
            cp "$src" "$dest"
            if [ $? -eq 0 ]
            then
                echo "File copied successfully."
            else
                echo "Error in copying file."
            fi
            ;;
        2)
            echo "Enter file name to remove:"
            read fname
            rm "$fname"
            if [ $? -eq 0 ]
            then
                echo "File removed successfully."
            else
                echo "Error: File not found or cannot be removed."
            fi
            ;;
        3)
            echo "Exiting program..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Try again."
            ;;
    esac
done