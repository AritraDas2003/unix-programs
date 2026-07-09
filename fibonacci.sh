#!/bin/bash

echo -n "Enter number of terms"
read n

a=0
b=1

echo "fibonacci series..."

for ((i=1;i<=$n ;i++))
do
    echo -n "$a"
    c=$(($a+$b))
    a=$b
    b=$c
done

echo

exec

    