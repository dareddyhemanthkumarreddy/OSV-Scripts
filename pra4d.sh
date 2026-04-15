#!/bin/bash

days=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")

echo "Days of the Week:"
for day in "${days[@]}"
do
    echo "$day"
done