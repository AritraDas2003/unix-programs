#!/bin/bash

echo -n "Enter the file or directory name: "
read name

if [ -f "$name" ]
then
    echo "$name is a Regular File."

elif [ -d "$name" ]
then
    echo "$name is a Directory."

else
    echo "$name is Not a File or Directory."
fi