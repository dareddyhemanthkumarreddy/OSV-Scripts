#!/bin/bash

# Input
requests=(98 183 37 122 14 124 65 67)
n=${#requests[@]}
head=53
disk_size=200 # tracks: 0 to 199

echo "Requests: ${requests[@]}"
echo "Initial Head Position: $head"

# ---------------- FCFS ----------------
echo ""
echo "FCFS Disk Scheduling:"

seek=0
current=$head

for ((i=0; i<n; i++))
do
distance=$(( ${requests[i]} - current ))
if [ $distance -lt 0 ]; then
distance=$(( -distance ))
fi

seek=$((seek + distance))
current=${requests[i]}

echo "Move to ${requests[i]} (Seek=$seek)"
done

echo "Total Seek Time (FCFS): $seek"

# ---------------- SCAN ----------------
echo ""
echo "SCAN Disk Scheduling:"

# Direction: 1 = right, 0 = left
direction=1

left=()
right=()

# Split requests
for r in "${requests[@]}"
do
if [ $r -lt $head ]; then
left+=($r)
else
right+=($r)
fi
done

# Sort arrays
IFS=$'\n' left=($(sort -n <<<"${left[*]}"))
IFS=$'\n' right=($(sort -n <<<"${right[*]}"))

seek=0
current=$head

if [ $direction -eq 1 ]; then
# Move right
for r in "${right[@]}"
do
distance=$((r - current))
if [ $distance -lt 0 ]; then
distance=$(( -distance ))
fi
seek=$((seek + distance))
current=$r
echo "Move to $r (Seek=$seek)"
done

# Go to end
distance=$(( (disk_size-1) - current ))
seek=$((seek + distance))
current=$((disk_size-1))
echo "Move to end $current (Seek=$seek)"

# Reverse direction (left)
for ((i=${#left[@]}-1; i>=0; i--))
do
r=${left[i]}
distance=$((current - r))
if [ $distance -lt 0 ]; then
distance=$(( -distance ))
fi
seek=$((seek + distance))
current=$r
echo "Move to $r (Seek=$seek)"
done
fi

echo "Total Seek Time (SCAN): $seek"