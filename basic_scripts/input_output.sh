#!/bin/bash

# Standard Input (stdin): File Descriptor 0
# Standard Output (stdout): File Descriptor 1
# Standard Error (stderr): File Descriptor 2

read -p "Input your number: " num
num_reg='^[0-9]+$$'
if ! [[ $num =~ $num_reg ]]
then
    echo "What is that? I told you to input a number!!!"
fi