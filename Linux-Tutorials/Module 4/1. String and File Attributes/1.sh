# -r operation in linux

#!/bin/bash

if [ -r "$0" ];
then 
echo "The file is readable"
else
echo "The file is not readable"
fi
