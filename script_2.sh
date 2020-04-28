#!/bin/sh

# Q.2 List all files whose size is larger than a given size in a given directory. 

# Solution :-

ls -l $2 | awk -v x=$1 'FNR==1{next} $5 > x {print $NF}' > out.txt

echo Files having size greater than $1 are :-
cat out.txt

rm -f out.txt	# For removing the file "out.txt" created while program was processing.
