#!/bin/bash

tail -q -n 3 $0 | head -n 1 | { read arg; echo "First line of the last 3 lines of current file: $arg"; }
