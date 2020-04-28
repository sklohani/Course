#!/bin/sh

# Q.4 Write a script that replaces all spaces in the file name with _.

# Solution :-

# I solved this question by considering the first argument as file name consisting spaces in it.

y=$1
mv "$y" `echo $y | sed 's/ /_/g'`

ls	# Listing the files for the confirmation whether the file name changed or not.
