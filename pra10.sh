#!/bin/bash

fork=(1 1 1 1 1)

eat() {
p=$1
left=$p
right=$(( (p+1) % 5 ))

if (( fork[left]==1 && fork[right]==1 ))
then
fork[left]=0
fork[right]=0
echo "Philosopher $p is Eating"
sleep 1
echo "Philosopher $p finished Eating"
fork[left]=1
fork[right]=1
else
echo "Philosopher $p is Waiting for forks"
fi
}

while true
do
echo "Enter philosopher number (0-4) or 5 to exit:"
read p

if (( p==5 ))
then
exit
fi

eat $p
done