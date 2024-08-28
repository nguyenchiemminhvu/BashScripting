#!/bin/bash

echo ${PWD}/*.sh
echo
echo ${PWD}/hello?????.sh
echo 
echo ${PWD}/[hp]*.sh
echo 
echo ${PWD}/[a-d]*.sh
echo 
shopt -s extglob
echo ${PWD}/!(*.sh)