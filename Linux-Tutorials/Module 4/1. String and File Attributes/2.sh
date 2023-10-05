# -x operation in linux


#!/bin/bash

if [ -x "$0" ];
then 
echo "The file is executable"
else
echo "The file is not executable"

fi