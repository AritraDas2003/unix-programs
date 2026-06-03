#!/bin/bash

echo "Enter a number to check: "
read n

for((i=2 ; i<n; i++))
do
        if(( n%i == 0 ))
        then
                echo "$n is not a Prime."
                exit
        fi


done

if ((n > 1))
then

        echo "$n is prime."
else
        echo "$n is not a Prime"
fi