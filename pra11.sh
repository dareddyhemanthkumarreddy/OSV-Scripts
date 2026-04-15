#!/bin/bash

# Input: Memory Blocks and Process Sizes
blocks=(100 500 200 300 600)
processes=(212 417 112 426)
# get the number of memory blocks and processes
m=${#blocks[@]}
n=${#processes[@]}

# Function: First Fit
first_fit() {
b=("${blocks[@]}")
echo "First Fit Allocation:"

for ((i=0; i<n; i++))
do
allocated=0
for ((j=0; j<m; j++))
do
if [ ${b[j]} -ge ${processes[i]} ]; then
echo "Process $((i+1)) (${processes[i]}) -> Block $((j+1))"
b[j]=$((b[j] - processes[i]))
allocated=1
break
fi
done

if [ $allocated -eq 0 ]; then
echo "Process $((i+1)) (${processes[i]}) -> Not Allocated"
fi
done
echo ""
}

# Function: Best Fit
best_fit() {
b=("${blocks[@]}")
echo "Best Fit Allocation:"

for ((i=0; i<n; i++))
do
best=-1
for ((j=0; j<m; j++))
do
if [ ${b[j]} -ge ${processes[i]} ]; then
if [ $best -eq -1 ] || [ ${b[j]} -lt ${b[best]} ]; then
best=$j
fi
fi
done

if [ $best -ne -1 ]; then
echo "Process $((i+1)) (${processes[i]}) -> Block $((best+1))"
b[best]=$((b[best] - processes[i]))
else
echo "Process $((i+1)) (${processes[i]}) -> Not Allocated"
fi
done
echo ""
}

# Function: Worst Fit
worst_fit() {
b=("${blocks[@]}")
echo "Worst Fit Allocation:"

for ((i=0; i<n; i++))
do
worst=-1
for ((j=0; j<m; j++))
do
if [ ${b[j]} -ge ${processes[i]} ]; then
if [ $worst -eq -1 ] || [ ${b[j]} -gt ${b[worst]} ]; then
worst=$j
fi
fi
done

if [ $worst -ne -1 ]; then
echo "Process $((i+1)) (${processes[i]}) -> Block $((worst+1))"
b[worst]=$((b[worst] - processes[i]))
else
echo "Process $((i+1)) (${processes[i]}) -> Not Allocated"
fi
done
}

# Calling functions
first_fit
best_fit
worst_fit
