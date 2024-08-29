#!/bin/bash

declare -a mics_arr
misc_arr=(1 2 3 "hey" [10]=10)
echo ${misc_arr[@]}

declare -a file_arr
file_arr=(*.sh)
for i in $(seq ${#file_arr[@]})
do
    echo ${file_arr[$i]}
done

declare -A person
person[name]="NCMV"
person[job]="Programmer"
echo ${person[name]} ${person[job]}

for key in ${!person[@]}
do
    echo ${person[$key]}
done

[[ ${person[@]} =~ "Programmer" ]] && echo "We have a programmer here"