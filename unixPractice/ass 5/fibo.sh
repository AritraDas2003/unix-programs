#!/bin/bash

echo "Enter a Number: "
read n

a=0
b=1

for((i=1; i<=n; i++))
do
        echo -n "$a " # -n is for not printing a new line after output
        ((c=a+b))
        a=$b
        b=$c
done

echo # for one line gap