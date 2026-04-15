#!/bin/bash

echo "Enter the value of n:"
read n

a=1
b=1
i=1

echo "Fibonacci series:"

while (( i <= n ))
do
    if (( i == 1 )); then
        echo -n "$a "
    elif (( i == 2 )); then
        echo -n "$b "
    else
        c=$((a + b))
        echo -n "$c "
        a=$b
        b=$c
    fi
    ((i++))
done