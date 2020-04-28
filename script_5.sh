#!/bin/sh

# Q.5 A script to walk through the files in the directory and compute the average of the values in the files. The output consists of one line per file 	     with each line having the name of the file and average of the 2nd column.

# Solution :-

echo Filename Average 	# For printing these terms at the begining of output.

for i in `ls $1`

do
	echo $i `awk -F" " '{n ++
			sum = sum + $2
			avg = sum/n}
			END{print avg}' $1/$i`
done
