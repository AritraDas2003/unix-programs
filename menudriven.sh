#!/bin/bash

echo "Main menu"
echo "1.Adition"
echo "2.Substraction"
echo "3.Multiplication"
echo "4.Division"

echo -n "enter your choice: "
read ch

echo -n "Enter first number"
read a

echo -n "Enter second number"
read b

case $ch in
    1)
        sum=$(($a+$b))
        echo "adition: $sum"
        ;;
    2)
        sub=$(($a-$b))
        echo "substraction: $sub"
        ;;
    3)
        mul=$(($a*$b))
        echo "multiplication: $mul"
        ;;
    4)
        if[$b -eq 0]
        then
            echo "can not divide with 0"
        else
            div=$(($a/$b))
            echo "division: $div"
        fi
        ;;
    *)
        echo "invalid choice"
        ;;
esac
                

