#!/bin/bash

PROCESS_NAME="PARENT"

# execute commands in a child process
(
    PROCESS_NAME="CHILD"
    ping -c 1 localhost > temp.txt
    echo "child process is done"
)

echo "Current process is $PROCESS_NAME"
cat temp.txt
rm temp.txt

# execute commands in the current process
{
    echo `date`
}

# doing arithmetic
let a=5+2
echo $a
let a++
echo $a

(( a=a**2 ))
echo $a

(( a=a/2 ))
echo $a