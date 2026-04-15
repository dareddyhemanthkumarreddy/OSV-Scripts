#!/bin/bash

echo "Enter Principal amount:"
read p
echo "Enter Rate of interest:"
read r
echo "Enter Time (in months):"
read t

si=$(("$p * $r * $t / 100"))

echo "Simple Interest = $si"