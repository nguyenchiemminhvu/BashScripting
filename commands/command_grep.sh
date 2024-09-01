#!/bin/bash

# grep [options] pattern [file...]

grep "bash" $0

grep -v "bash" $0 # invert, print non-match

grep -r "bash" ./../ # recursive search

grep -n "bash" $0 # show number of match line

grep -c "bash" $0 # count number of match line

grep -l "bash" *.sh # all files contain the match

ps -aux | grep bash

grep -E ".*bash$" *.sh # match regex pattern
