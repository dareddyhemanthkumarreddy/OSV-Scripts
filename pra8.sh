#!/bin/bash

# Input
n=5
bt=(5 3 8 6 2) # Burst Times
at=(0 1 2 3 4) # Arrival Times

echo "Processes:"
for ((i=0;i<n;i++))
do
echo "P$((i+1)) AT=${at[i]} BT=${bt[i]}"
done

# ---------------- FCFS ----------------
echo ""
echo "FCFS Scheduling:"

wt=(0)
tat=()

# Waiting Time
for ((i=1;i<n;i++))
do
wt[i]=$((wt[i-1] + bt[i-1]))
done
for ((i=0;i<n;i++))
do
wt[i]=$((wt[i] - at[i]))
done

# Turnaround Time
for ((i=0;i<n;i++))
do
tat[i]=$((wt[i] + bt[i]))
done

echo "Process BT WT TAT"
for ((i=0;i<n;i++))
do
echo "P$((i+1)) ${bt[i]} ${wt[i]} ${tat[i]}"
done

# Average Times
total_wt=0
total_tat=0

for ((i=0;i<n;i++))
do
total_wt=$((total_wt + wt[i]))
total_tat=$((total_tat + tat[i]))
done

echo "Average WT = $((total_wt/n))"
echo "Average TAT = $((total_tat/n))"

# ---------------- SJF ----------------
echo ""
echo "SJF Scheduling (Non-Preemptive):"

# Copy arrays
bt_copy=("${bt[@]}")
completed=(0 0 0 0 0)
wt_sjf=(0 0 0 0 0)
tat_sjf=(0 0 0 0 0)

time=0
count=0

while [ $count -lt $n ]
do
min_index=-1

for ((i=0;i<n;i++))
do
if [ ${completed[i]} -eq 0 ] && [ ${at[i]} -le $time ]; then
if [ $min_index -eq -1 ] || [ ${bt_copy[i]} -lt ${bt_copy[min_index]} ]; then
min_index=$i
fi
fi
done

if [ $min_index -eq -1 ]; then
time=$((time+1))
continue
fi

wt_sjf[min_index]=$((time - at[min_index]))
time=$((time + bt_copy[min_index]))
tat_sjf[min_index]=$((wt_sjf[min_index] + bt_copy[min_index]))

completed[min_index]=1
count=$((count+1))
done

echo "Process BT WT TAT"
for ((i=0;i<n;i++))
do
echo "P$((i+1)) ${bt[i]} ${wt_sjf[i]} ${tat_sjf[i]}"
done

# Average Times
total_wt=0
total_tat=0

for ((i=0;i<n;i++))
do
total_wt=$((total_wt + wt_sjf[i]))
total_tat=$((total_tat + tat_sjf[i]))
done

echo "Average WT = $((total_wt/n))"
echo "Average TAT = $((total_tat/n))"