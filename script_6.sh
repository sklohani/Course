#!/bin/sh

# Q.6 For every line in greedy-mds-800-150.out, paste the last two columns of the corresponding lines in ga-mds-800-150.out.

# Solution :-

# First argument is the 'file' from which I want to copy the last two columns and Second argument is the 'file' in which I want to paste the corresponding lines.

awk '{print $2,$3}' $1 > out.txt

paste -d" " $2 out.txt > file_out.txt

cat file_out.txt > $2		# Overwriting the modified file(file_out.txt) with earlier file(second argument file).
cat $2				# Printing the contents of new modified file.
rm -f out.txt file_out.txt	# Removing the extra files created while the program was processing.
