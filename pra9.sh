#!/bin/bash

buffer=0
size=5
empty=5
full=0
mutex=1

while true
do
echo "1. Produce 2. Consume 3. Exit"
read ch

case $ch in

1)
if (( empty > 0 && mutex == 1 ))
then
((mutex--))
((buffer++))
((empty--))
((full++))
echo "Item Produced. Buffer=$buffer"
((mutex++))
else
echo "Producer waiting (Buffer full or mutex locked)"
fi
;;

2)
if (( full > 0 && mutex == 1 ))
then
((mutex--))
((buffer--))
((full--))
((empty++))
echo "Item Consumed. Buffer=$buffer"
((mutex++))
else
echo "Consumer waiting (Buffer empty or mutex locked)"
fi
;;

3) exit ;;

*) echo "Invalid choice" ;;

esac
done