#!/usr/bin/env bash
exec 3< test.txt
cat <&3
exec 3<&-