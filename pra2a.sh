#!/bin/bash

echo "Enter first number:"
read a
echo "Enter second number:"
read b

sum=$((a + b))
diff=$((a - b))
prod=$((a * b))
quot=$((a / b))

echo "Addition = $sum"
echo "Subtraction = $diff"
echo "Multiplication = $prod"
echo "Division = $quot"