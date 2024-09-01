#!/bin/bash

# idea: read input line by line, divide each line into fields based on delimiter (default is whitespace), perform actions on the fields

# awk 'pattern {action}' filename

echo "1 ncmv admin
2 nguyenvu user
3 vunguyen user
unknown user" > temp.txt && awk '/^[0-9]+ / { if($3 == "admin") print "found admin", $2; else print NR, "records processed"; }' temp.txt && rm temp.txt

echo

echo "1,ncmv,admin
2,nguyenvu,user
3,vunguyen,user
unknown,user" > temp.txt && awk -F ',' '/^[0-9]+/ { if($3 == "admin") print "found admin", $2; else print NR, "records processed"; }' temp.txt && rm temp.txt
