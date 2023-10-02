#!/bin/bash

# Array Operations in BASH

# 1) Declare an Array names of length 7 and find
#    a. The total number of elements
#    b. Print all the elements
#    c. Print the 5th element

declare names=("Jeya" "Arunkumar" "Jenilia"  "Satheesh" "Vignesh" "Sushil" "Padmesh")
echo "${#names[@]}"
echo "${names[@]}"
echo "${names[4]}"