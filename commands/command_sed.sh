#!/bin/bash

# sed [options] 'command' file

# Print lines
sed '' $0 # print whole file
sed -n '1p' $0 # print first line only, p mean print
sed -n '1,3p' $0 # print lines from 1 to 3, p mean print

# Substitution, s mean substitute
echo "how to use sex? the first sex word is modified, but the second is not" | sed 's/sex/sed/'
echo "how to use sex? the first sex word is modified, and all occurences of sex words too
as well as the sex word of the second line, because g option mean global" | sed 's/sex/sed/g'
echo "how to use sex? the first sex word is modified, and the occurence of sex in this line too
but not sex word in this line, because only first line is selected" | sed '1s/sex/sed/g'
echo "how to use sex? this time, the sex words are modified via regex matching technique" | sed 's/se[a-z]/sed/g'

# Insertion, i mean insert
echo "line 1
line 2
line 3" > temp.txt && sed '2i\insertion' temp.txt && rm temp.txt

# Appending, a mean append
echo "don't know what to do next? asking God for guidance!" > temp.txt && sed 'a\good idea!' temp.txt && rm temp.txt

# Deletion, d mean delete
echo "line 1
line 2
line 3" > temp.txt && sed '2d' temp.txt && rm temp.txt

# Replacement, c mean change
echo "line 1
line 2
line 3" > temp.txt && sed '2c\replacement' temp.txt && rm temp.txt
