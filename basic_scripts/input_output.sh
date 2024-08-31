#!/bin/bash

# Standard Input (stdin): File Descriptor 0
# Standard Output (stdout): File Descriptor 1
# Standard Error (stderr): File Descriptor 2

usage() {
    cat <<EOF
usage: ./input_output.sh
No parameter is required
Firstly, the script will ask you to enter a number.
If you enter something not a number, a complain will output.
This usage print technique is called heredocs.
It allows multi-line input to the command.
EOF
}

usage

read -p "Input your number: " num
num_reg='^[0-9]+$$'
if ! [[ $num =~ $num_reg ]]
then
    echo "What is that? I told you to input a number!!!"
fi

echo "This regular text is redirected to a file" > temp.txt
cat temp.txt

ls non_existing_file.txt 2> temp.txt
cat temp.txt

cat temp.txt > /dev/null 2>&1 # output nothing

cat < temp.txt # input from a file instead of stdin

rm temp.txt

grep "string" <<<"This is a multiline string
it is called a herestring
you can enter whatever you want here
and this string will become the input for the grep command above"

# This is pipe
# Output of the current command being the input of next command
top -b -n 1 | grep '^ *[0-9]' | awk '{print $1, $9, $10, $12}' | sort -k2 -nr | head -10
