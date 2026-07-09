#!/bin/bash

echo -n "Enter the file name: "
read file

if [ -e "$file" ]
then
    echo "File exists."

    if [ -r "$file" ]
    then
        echo "Read Permission: Yes"
    else
        echo "Read Permission: No"
    fi

    if [ -w "$file" ]
    then
        echo "Write Permission: Yes"
    else
        echo "Write Permission: No"
    fi

    if [ -x "$file" ]
    then
        echo "Execute Permission: Yes"
    else
        echo "Execute Permission: No"
    fi

else
    echo "File does not exist."
fi