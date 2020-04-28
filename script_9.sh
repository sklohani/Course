#!/bin/sh

# Q.9  Write a shell script that takes a uid as an argument and prints out that person's name, home directory, shell and group number. Print out the 		name of the group corresponding to the group number, and other groups that person may belong to. (groups, awk, cut. Also look at /etc/passwd 		and /etc/groups).

# Solution :-

var1=`awk -F ":" -v y=$1 ' {if($3 == y) print $1,$6,$7,$4}' /etc/passwd`

echo $var1	# For printing person's name, home directoy, shell, group number.
echo

var2=`echo $var1 | awk '{print $4}'`
var3=`awk -F ":" -v x=$var2 '{if($3 == x) print $1}' /etc/group`

echo Group corresponding to group no. $var2 is :- $var3
echo

var4=`echo $var1 | awk '{print $1}'`

echo Other "groups" that person may belongs to :-
groups $var4
