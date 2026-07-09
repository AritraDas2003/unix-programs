#!/bin/bash

echo "Main menu"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

echo -n "Enter your choice: "
read ch

echo -n "Enter first number: "
read a

echo -n "Enter second number: "
read b

case $ch in
    1)
        sum=$(($a + $b))
        echo "Addition: $sum"
        ;;
    2)
        sub=$(($a - $b))
        echo "Subtraction: $sub"
        ;;
    3)
        mul=$(($a * $b))
        echo "Multiplication: $mul"
        ;;
    4)
        if [ $b -eq 0 ]
        then
            echo "Cannot divide by 0"
        else
            div=$(($a / $b))
            echo "Division: $div"
        fi
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
