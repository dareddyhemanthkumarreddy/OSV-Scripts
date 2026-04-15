#!/bin/bash

echo "Enter first number:"
read a
echo "Enter second number:"
read b

if [ $a -ge $b ]
then
    echo "Greater number is: $a"
elif [ $b -ge $a ]
then
    echo "Greater number is: $b"
else
    echo "Both numbers are equal"
fi