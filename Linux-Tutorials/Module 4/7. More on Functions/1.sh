# More on functions

# 1) Write a program, 
#    a. where the function accepts two arguments.
#    b. The function should multiply the two arguments.
#    c. Make 3 function calls with arguments - (1, 2), (2, 3) and (3, 4)



#!/bin/bash

func(){
	echo "$1 * $2 = $(($1 * $2))";
}

func 1 2
func 2 3
func 3 4