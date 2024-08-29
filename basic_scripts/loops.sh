#!/bin/bash

s=""
for i in {1..5}
do
    s+="$i "
done
echo $s

echo 

s=""
counter=1
while [[ counter -le 10 ]]
do
    s+="$counter "
    (( counter++ ))
done
echo $s