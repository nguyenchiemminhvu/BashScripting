#!/bin/bash

# find [path] [options] [expression]

find . -name "command_find.sh"
find . -iname "Command_Find.sh"

find . -type f | grep find

find .. -maxdepth 2 -type f -name "command_find.sh"

find .. -type d -name "commands" -exec find {} -name "command_find.sh" \;

find . -type f -empty -exec echo "Empty files: {}" \;
