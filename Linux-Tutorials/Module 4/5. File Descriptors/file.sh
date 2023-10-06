#!/usr/bin/env bash

exec 3> test.txt
echo "Hi, This is Arunkumar" >&3
cat <&3
exec 3<&-