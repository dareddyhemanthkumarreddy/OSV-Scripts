#!/bin/bash

echo "Enter first number:"
read a
echo "Enter second number:"
read b
echo "Enter third number:"
read c

# Find largest
if [ $a -ge $b ] && [ $a -ge $c ]; then
    largest=$a
elif [ $b -ge $a ] && [ $b -ge $c ]; then
    largest=$b
else
    largest=$c
fi

# Find smallest
if [ $a -le $b ] && [ $a -le $c ]; then
    smallest=$a
elif [ $b -le $a ] && [ $b -le $c ]; then
    smallest=$b
else
    smallest=$c
fi

echo "Largest number = $largest"
echo "Smallest number = $smallest"