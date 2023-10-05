# Case statement

# 1) Write a menu driven program for mathematical calculation
#    a. It should take user inputs a and b
#    b. It should ask for mathematical operator (+, -, / and *).
#    c. Do the calculation
#    d. Print the output

#!/bin/bash

read -p "Enter the first number: " a
read -p "Enter the second number: " b

read -p "Enter the operation: " op

case $op in 
	"+")
	echo "Answer: $(($a+$b))"
	;;
	"-")
	echo "Answer: $(($a-$b))"
	;;
	"*")
	echo "Answer: $(($a*$b))"
	;;
	"/")
	echo "Answer: $(($a+$b))"
	;;
	*)
	echo "Enter a valid expression"
esac 