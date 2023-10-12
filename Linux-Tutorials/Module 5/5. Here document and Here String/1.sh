# Here document and Here string

# 1) Convert a string to uppercase using:
# 	a) Here document
# 	b) Here string

#!/bin/bash

read -p "Enter a string: " s

cat <<< $s | tr [a-z] [A-Z]
