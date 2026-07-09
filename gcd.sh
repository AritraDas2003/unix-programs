#!/bin/bash

echo -n "Enter first number: "
read a

echo -n "Enter second number: "
read b

x=$a
y=$b

while [ $y -ne 0 ]
do
    rem=$(($x % $y))
    x=$y
    y=$rem
done

echo "GCD of $a and $b is $x"