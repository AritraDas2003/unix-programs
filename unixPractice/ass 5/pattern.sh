#!/bin/bash

if(($#!=2)) # $# specifies the no of arguments in this case <file_name> <pattern>
then
        echo "Wrong number of arguments"
        exit
fi
# 1st position of argument is the file name and 2nd position is the pattern

file_name=$1
pattern=$2

if grep -q "$pattern" "$file_name"
then
        echo "Pattern Found: "
        grep "$pattern" "$file_name"
else
        echo "Pattern not found in $file_name"
fi
