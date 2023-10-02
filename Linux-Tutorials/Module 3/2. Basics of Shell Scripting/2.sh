#!/bin/bash

# 2) Write a simple Bash program:
#    a. To ask username from user
#    b. Exit the program, if user does not enter anything within 10 seconds

read -t 10 -p "Enter the username: " username
echo "Name: $username"