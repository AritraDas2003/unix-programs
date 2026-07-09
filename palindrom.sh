#!/bin/bash

echo -n "Enter a number to check: "
read num

temp=$num
rev=0

while [ $temp -gt 0 ]
do
    rem=$(($temp % 10))
    rev=$(($rev * 10 + $rem))
    temp=$(($temp / 10))
done

if [ $rev -eq $num ]
then
    echo "$num is a palindrome"
else
    echo "$num is not a palindrome"
fi
