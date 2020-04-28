#!/bin/sh

# Q.3 Check the disk usage of a user and print a message "WARNING: Disk usage exceeding quota value" where quota is the value given as a parameter and 	     the user name is also a parameter to the script.

# Solution :-

var1=`du -s /home/$1`

echo $var1

echo $var1 | awk -v y=$2 '$1 > y {print "WARNING: Disk usage exceeding quota value"}'
