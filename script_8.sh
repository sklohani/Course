#!/bin/sh

# Q.8 Find all the files in which the string "printf" occurs in the directory /usr/include. Print only the unique file names in which this string 	occurs. At the end, print the number of files in which this string occurs.

# Solution :-

grep -rF printf /usr/include/ | cut -d ":" -f1 | uniq > out.txt

cat out.txt
echo
echo "The no. of files containing string 'printf' is" `cat out.txt | wc -l`

rm -f out.txt
