# Arrays and functions

# 1) Write a program,
#     a. Where a function adds all the elements in an array. 
#     b. The function should display the sum of elements.
#     c. Make 2 function calls with array elements- (1, 2, 3) and (4, 5, 6).


#!/bin/bash

func(){
	arr=("$@");
	tot=0;
	for i in "${arr[@]}"
	do
		tot=$(($tot+$i));	
	done
	echo "Sum: $tot";
	
}

array=(1 2 3);
func "${array[@]}";
array=(4 5 6);
func "${array[@]}";