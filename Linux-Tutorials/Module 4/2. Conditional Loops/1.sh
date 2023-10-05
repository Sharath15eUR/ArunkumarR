# Conditional Loops

# 1) Find the sum of first n prime numbers.

#!/bin/bash

read -p "Enter a number: " num

flag=1

for((i=2;i<num;i++))
do
rem=$((num%i))	
#echo "Rem: $rem"
if [ "$rem" == 0 ];
then
flag=0
break
fi
done


#echo "Flag = $flag"
if [ $flag == 1 ];
then 
echo "The number is a prime number"
else
echo "The number is not a prime number"
fi