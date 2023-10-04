
# 1) Check whether the file exists and is executable using logical operators.
#    Hint:man test


#!/bin/bash

if [ -x "$1" ];
then 
echo "File and exist and it is executable"
elif [[ -f "$1" ]];
then
echo "File exist and it is not executable"
else
echo "File does not exist"
fi