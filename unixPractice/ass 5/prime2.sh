# finding prime numbers between a given range 
#!/bin/bash

echo "Enter a lower bound: "
read l

echo "Enter a upper bound: "
read u

for ((n=l; n<=u; n++ ))
do
        count_factors=0 #no space allowed  brfore or after '=' or '==' whenever comapring or assignment operation
        for ((i=1; i<=n; i++))
        do
                if((n%i==0))
                then
                        ((count_factors++))
                fi
        done


        if((count_factors==2))
        then
                echo $n
        fi

done