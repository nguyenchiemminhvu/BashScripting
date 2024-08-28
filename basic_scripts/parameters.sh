#!/bin/bash

echo "script file name: $0"
echo "number of params: $#"
echo "param 1: $1"
echo "param 2: $2"
echo "all param as array: $@"
echo "all param as string $*"
IFS=','
echo "all param as string $*"