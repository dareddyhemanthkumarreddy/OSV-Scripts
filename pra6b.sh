#!/bin/bash

echo "Enter a number:"
read n

if (( n <= 1 )); then
    echo "Not a Prime number"
    exit
fi

flag=1
i=2

while (( i <= n / 2 ))
do
    if (( n % i == 0 )); then
        flag=0
        break
    fi
    ((i++))
done

if (( flag == 1 )); then
    echo "$n is a Prime number"
else
    echo "$n is not a Prime number"
fi