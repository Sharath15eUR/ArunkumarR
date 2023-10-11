# Recursive function

# 1) Write a program where the recursive function calculates the sum of N numbers 


#!/bin/bash

func(){
	n=$1
	if (( $n <= 1)); then
	echo 1
	else
	t=$(func $(( $n-1 )))
	echo $(( $n+$t ))
	fi
}
read -p "Enter a numebr: " num
func num