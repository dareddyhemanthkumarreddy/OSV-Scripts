#!/bin/bash

echo "Enter the value of n:"
read n

i=1
i=1
while (( i <= n ))
do
    if (( i % 2 == 0 )); then
        echo "Even: $i"
    else
        echo "Odd: $i"
    fi
    ((i++))
done