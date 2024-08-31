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

while true
do
    read file
    if [[ $file == "" ]]
    then
        break
    fi

    echo $file
    file_arr+=($file)
    echo ${file_arr[@]}
done

declare -a to_be_removed
for file in ${file_arr[@]}
do
    if ! [[ -e $file ]]
    then
        touch $file
        to_be_removed+=($file)
    fi
done

[[ ${#to_be_removed[@]} -gt 0 ]] && rm ${to_be_removed[@]} && echo "removed ${to_be_removed[@]}"

declare -A person=(["phone"]="0934359954")
person[name]="NCMV"
person[job]="Programmer"
echo ${person[name]} ${person[job]}

for key in ${!person[@]}
do
    echo ${person[$key]}
done

[[ ${person[@]} =~ "Programmer" ]] && echo "We have a programmer here"