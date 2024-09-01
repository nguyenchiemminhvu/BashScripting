#!/bin/bash

head -q -n 3 $0 | tail -n 1 | { read arg; echo "The third line alone: $arg"; }