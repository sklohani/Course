#!/bin/sh

# Q.7 Write a script that takes a directory name and a file extension as input and for all the files with that extension in that directory, prints the 	     name of the file, its size, the number of lines in the file in descending order of the number of lines.

# Solution :-

echo Filename Size 			# For printing the title names(Filenme & Size).
echo					# For giving a blank line.

ls -l $1 | grep "$2$" | awk '{print $9,$5}'

echo 
echo "'No. of lines'" Filename		# For printing the title names(No. of lines & Filename).
echo

# For the no. of lines in files in decending order of no. of lines.

for i in `ls $1 | grep "$2$"`
do
	wc -l $1/$i >> out.txt
done

sort -nrt " " -k1 out.txt

rm -f out.txt 		# For removing the extra file created while the program was processing.
