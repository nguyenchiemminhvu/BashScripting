#!/bin/bash

echo m{i,a,e}ss
echo {1..9}
echo 0x{{0..9},{A..F}}
echo 0x{0,1}{A..F}
echo ${PWD}/*.{sh,md}

a=1
b=10
eval echo {$a..$b}