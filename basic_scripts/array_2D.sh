#!/bin/bash

#!/bin/bash

# Initialize the associative array
declare -A array

# Function to set a value in the 2D array
set_value() {
    local row=$1
    local col=$2
    local value=$3
    array["$row,$col"]=$value
}

# Function to get a value from the 2D array
get_value() {
    local row=$1
    local col=$2
    echo ${array["$row,$col"]}
}

# Set values in the 2D array
set_value 0 0 "a"
set_value 0 1 "b"
set_value 0 2 "c"
set_value 1 0 "d"
set_value 1 1 "e"
set_value 1 2 "f"
set_value 2 0 "g"
set_value 2 1 "h"
set_value 2 2 "i"

# Get and print values from the 2D array
for row in {0..2}; do
    for col in {0..2}; do
        echo -n "$(get_value $row $col) "
    done
    echo
done