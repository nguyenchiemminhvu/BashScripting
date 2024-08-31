#!/bin/bash

sum()
{
    local n1=$1
    local n2=$2
    echo "$n1 + $n1 = $(($n1 + $n1))"
}

sub()
{
    echo "$1 - $2 = $(($1 - $2))"
}

mul()
{
    echo "$1 * $2 = $(($1 * $2))"
}

div()
{
    echo "$1 / $2 = $(($1 / $2))"
}

if [[ $# -ge 2 ]]
then
    sum $1 $2
    sub $1 $2
    mul $1 $2
    [[ $2 -ne 0 ]] && div $1 $2 || echo "Can not divide by 0"
fi
