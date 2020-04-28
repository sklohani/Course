#!/bin/sh

# Q.1 Write a program called isyes that returns an exit status of 9 if its argument is "yes" and 1 otherwise. For purposes of this exercise, consider 	    y, yes, Yes, YES and Y all to be valid "yes" arguments. Write the program using an if command and then rewrite it using a case command.

# Solution :-

# The Script using "if" command.

if [ $1 = y ] || [ $1 = yes ] || [ $1 = Yes ] || [ $1 = YES ] || [ $1 = Y ]
then
	echo 'This is true "yes" argument'
	exit 9
else
	echo 'This is not true "yes" argument'
	exit 1
fi
