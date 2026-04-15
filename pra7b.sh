#!/bin/bash

echo "Enter a string:"
read str

echo "$str" | awk '{
for(i=1;i<=length($0);i++){
c=substr($0,i,1)
if(c>="a" && c<="z") printf toupper(c)
else if(c>="A" && c<="Z") printf tolower(c)
else printf c
}
printf "\n"}'

