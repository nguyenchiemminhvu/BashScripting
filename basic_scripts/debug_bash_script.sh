#!/bin/bash

# debug the whole bash script by running the command
# bash -x ./<script>.sh

clear

echo "Hello Linux Bash Scripting"
echo

set -x
echo "Today is `date`, week `date +"%V"`"
set +x

echo
echo "This machine is running `uname -si` for `uptime`"
