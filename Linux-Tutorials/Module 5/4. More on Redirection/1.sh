# More on Redirection

# 1) Create X_file.txt file with some content.
# 2) Redirect the content of both out_file.txt and X_file.txt to a new file


#!/bin/bash

cat out_file.txt X_file.txt &> output.txt