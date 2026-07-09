#!/bin/bash

echo -n "Enter the starting number: "
read start

echo -n "Enter the ending number: "
read end

echo "Prime numbers between $start and $end are:"

for ((num=start; num<=end; num++))
do
    flag=0

    if [ $num -lt 2 ]
    then
        continue
    fi

    for ((i=2; i<num; i++))
    do
        if [ $((num % i)) -eq 0 ]
        then
            flag=1
            break
        fi
    done

    if [ $flag -eq 0 ]
    then
        echo -n "$num "
    fi
done

echo