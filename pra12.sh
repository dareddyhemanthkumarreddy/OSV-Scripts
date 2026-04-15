#!/bin/bash

# Input
pages=(7 0 1 2 0 3 0 4 2 3 0 3 2)
n=${#pages[@]}
frames=3

echo "Reference String: ${pages[@]}"
echo "Number of Frames: $frames"

# ---------------- FIFO ----------------
echo ""
echo "FIFO Page Replacement:"

frame=()
front=0
faults=0

for ((i=0; i<n; i++))
do
hit=0

# Check if page already in frame
for f in "${frame[@]}"
do
if [ "$f" == "${pages[i]}" ]; then
hit=1
break
fi
done

if [ $hit -eq 0 ]; then
faults=$((faults+1))

if [ ${#frame[@]} -lt $frames ]; then
frame+=(${pages[i]})
else
frame[$front]=${pages[i]}
front=$(((front+1)%frames))
fi
fi

echo "Step $((i+1)): ${pages[i]} -> ${frame[@]}"
done

echo "Total Page Faults (FIFO): $faults"

# ---------------- LRU ----------------
echo ""
echo "LRU Page Replacement:"

frame=()
faults=0
time=0
last_used=()

for ((i=0; i<n; i++))
do
page=${pages[i]}
hit=0

# Check hit
for ((j=0; j<${#frame[@]}; j++))
do
if [ "${frame[j]}" == "$page" ]; then
hit=1
last_used[j]=$time
break
fi
done

if [ $hit -eq 0 ]; then
faults=$((faults+1))

if [ ${#frame[@]} -lt $frames ]; then
frame+=($page)
last_used+=($time)
else
# Find LRU index
lru_index=0
for ((j=1; j<frames; j++))
do
if [ ${last_used[j]} -lt ${last_used[lru_index]} ]; then
lru_index=$j
fi
done

frame[$lru_index]=$page
last_used[$lru_index]=$time
fi
fi

time=$((time+1))
echo "Step $((i+1)): $page -> ${frame[@]}"
done

echo "Total Page Faults (LRU): $faults"