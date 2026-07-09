#!/bin/bash

echo -n "enter a number to check"
read num

temp=$num
rev=0

while [ $temp -gt 0 ]
do
    rem=$(($temp%10))
    rev=$(($rev*10+$temp))
    temp=$(($temp/10))
done

if [$rev -eq $num]
then
    echo "$num is a palindrom"
else
    echo "it is not palindrome"
fi

exec
