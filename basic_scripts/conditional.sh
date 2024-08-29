#!/bin/bash

mkdir ${PWD}/temp && rm -rf ${PWD}/temp && echo "created and removed temp folder"
mkdir ${PWD}/temp && rm ${PWD}/temp || echo "failed to remove temp folder, try -rf option" && rm -rf ${PWD}/temp && echo "removed temp folder"

if [[ true ]]; then
    echo "condition is true"
fi

if [[ true ]]
then
    echo "condition is true"
fi

a=1
b=1
if [[ $a == $b ]]
then
    echo "a == b"
fi

a=1
b=2
if [[ $a != $b ]]
then
    echo "a != b"
fi

a=1
b=2
if [[ $a -lt $b ]]
then
    echo "a < b"
fi

a=1
b=2
if [[ $b -gt $a ]]
then
    echo "b > a"
fi

s1="this is string 1"
s2="this is string 2"
if [[ $s1 != $s2 ]]
then
    echo "s1 != s2"
fi

[[ $0 == *.sh ]] && echo "$0 is a bash script"

rm temp
if [[ $? != 0 ]]
then
    echo "rm temp command failed"
fi

s="string"
[[ $s1 == "this is $s 1" ]] && echo "match substring"

[[ -e ${PWD}/$0 ]] && echo "$0 exists"
[[ -f ${PWD}/$0 ]] && echo "$0 is a regular file"
[[ -d ${PWD} ]] && echo "${PWD} is a directory"
[[ -s ${PWD}/$0 ]] && echo "$0 is not empty"
[[ -x ${PWD}/$0 ]] && echo "$0 is execurable"

if ! [[ -e ${PWD}/temp ]] || ! [[ -s ${PWD}/temp ]]
then
    ! [[ -e ${PWD}/temp ]] && touch temp && echo "temp does not exist, create it"
    sleep 1
    ! [[ -s ${PWD}/temp ]] && echo "make it non-empty" > ${PWD}/temp && echo "make it non-empty"
    sleep 1
    rm ${PWD}/temp && echo "remove temp file"
fi