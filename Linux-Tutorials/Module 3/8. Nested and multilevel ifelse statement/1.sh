# Nested and multilevel if elsif statements

# 1) Write a program to output different messages when number is:
#    a. Greater than 3
#    b. Lesser than 3
#    c. Or equal to 3
#    d. Or when the user input is empty


#!/bin/bash

read -p "Enter a number: " n

if [ -z "$n" ];
then 
echo "Empty Input"

elif [[ "$n" > 3 ]];
then 
echo "Greater than 3"
elif [[ "$n" < 3 ]];
then echo "Lesser than 3"
else
echo "Equal to 3"
fi

