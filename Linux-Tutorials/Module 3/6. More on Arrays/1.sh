# More on Arrays

# 1) Declare an Array names2 of length 7 and perform following operations-
#    a. Extract three elements starting from index two. 
#    b. Replace third element with 'Debian' and display.
#    c. Append any new name at the end of Array.

#!/bin/bash

declare names=("Jeya" "Arunkumar" "Vignesh"  "Satheesh" "Jenilia" "Sushil" "Padmesh")
echo "The three elements starting from index 2: ${names[@]:2:3}"
names[2]="Debian"
echo "Replacing third element with Debian: ${names[@]}"
names=("${names[@]}" "Vignesh" "Priya")
echo "Adding new names: ${names[@]}"

# Output: 
# ┌──(kali㉿kali)-[~]
# └─$ ./array.sh
# The three elements starting from index 2: Vignesh Satheesh Jenilia
# Replacing third element with Debian: Jeya Arunkumar Debian Satheesh Jenilia Sushil Padmesh
# Adding new names: Jeya Arunkumar Debian Satheesh Jenilia Sushil Padmesh Vignesh Priya
