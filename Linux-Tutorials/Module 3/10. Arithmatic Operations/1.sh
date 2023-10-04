
# 1) Write a program to demonstrate the use of not equal to operator.


#!/bin/bash

read -p "Enter the value of 60 + 9: " n

if [ "$n" -ne 69 ];
then 
echo "The answer is incorrect"
else
echo "The answer is correct"
fi