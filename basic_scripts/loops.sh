#!/bin/bash

s=""
for i in {1..5}
do
    s+="$i "
done
echo $s

s=""
counter=1
while [[ counter -le 10 ]]
do
    s+="$counter "
    (( counter++ ))
done
echo $s

# C-style for loop
s=""
for (( i=1; i <= 10; i++ ))
do
    s+="$i "
done
echo $s

files=${PWD}/*.sh
for file in $files
do
    if [[ $file != $0 && -x $file ]] # prevent recursion
    then
        # $BASH $file && echo "executed $file"
        echo $file
    fi
done
