# Basics of functions

# 1) Write a program with two functions: 
#    a. The first function should display diskspace usage in human readable form.
#       (Hint: df -h)
#    b. The second function should display filesystem usage in human readable form.
#       (Hint: du -h)



#!/bin/bash

diskspace(){
	echo `df -h`;
}

filesystem(){
	echo `du -h`;
}

diskspace
filesystem