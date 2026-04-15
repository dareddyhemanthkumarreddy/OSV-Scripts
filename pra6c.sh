#!/bin/bash

echo "Enter a number:"
read n

temp=$n
rev=0

while (( n > 0 ))
do
    rem=$(( n % 10 ))
    rev=$(( rev * 10 + rem ))
    (( n = n / 10 ))
done

if (( temp == rev ))
then
    echo "Number is Palindrome"
else
    echo "Number is Not a Palindrome"
fi