#!/bin/bash

# sort numeric
echo "5
2
1
4
3
7
8" > temp.txt && sort -n temp.txt && rm temp.txt

echo

# sort numeric and revert order
echo "5
2
1
4
3
7
8" > temp.txt && sort -n -r temp.txt && rm temp.txt

echo 

# sort based on the second column
echo "3 4
9 2
5 3
6 1" > temp.txt && sort -n -k 2 temp.txt && rm temp.txt

echo 

# sort and remove duplicate
echo "1
1
4
4
2
2
3
3" > temp.txt && sort -n -u temp.txt && rm temp.txt

echo 

echo "1
1
4
4
2
2
3
3" > temp.txt && sort -n -u temp.txt -o sorted.txt && cat sorted.txt && rm temp.txt sorted.txt

echo 

# sort based on the second column, custom separate field
echo "1,3
4,2
6,1
5,9" > temp.txt && sort -n -t, -k 2 temp.txt && rm temp.txt