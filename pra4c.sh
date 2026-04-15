#!/bin/bash

while true
do
    echo "----------------------"
    echo "     CALCULATOR       "
    echo "----------------------"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    echo "Enter your choice:"
    read ch

    case $ch in
        1)
            echo "Enter first number:"
            read a
            echo "Enter second number:"
            read b
            result=$((a + b))
            echo "Result = $result"
            ;;
        2)
            echo "Enter first number:"
            read a
            echo "Enter second number:"
            read b
            result=$((a - b))
            echo "Result = $result"
            ;;
        3)
            echo "Enter first number:"
            read a
            echo "Enter second number:"
            read b
            result=$((a * b))
            echo "Result = $result"
            ;;
        4)
            echo "Enter first number:"
            read a
            echo "Enter second number:"
            read b
            if [ $b -ne 0 ]
            then
                result=$((a / b))
                echo "Result = $result"
            else
                echo "Division by zero not allowed"
            fi
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done