# -o operation in linux


#!/bin/bash

if [ -o "$0" ];
then
echo "The file is owned by the user"
else
echo "The file is not owned by the user"
fi
