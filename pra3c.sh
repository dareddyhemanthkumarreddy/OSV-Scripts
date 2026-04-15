#!/bin/bash

echo "Enter marks for Mathematics:"
read m1
echo "Enter marks for Physics:"
read m2
echo "Enter marks for Chemistry:"
read m3

total=$((m1 + m2 + m3))
percentage=$((total / 3))

echo "-------------------------"
echo "       MARKSHEET        "
echo "-------------------------"
echo "Total Marks = $total"
echo "Percentage  = $percentage%"

if [ $percentage -ge 75 ]
then
    echo "Class Obtained: Distinction"
elif [ $percentage -ge 60 ]
then
    echo "Class Obtained: First Class"
elif [ $percentage -ge 50 ]
then
    echo "Class Obtained: Second Class"
elif [ $percentage -ge 40 ]
then
    echo "Class Obtained: Pass"
else
    echo "Class Obtained: Fail"
fi