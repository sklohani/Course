#!/bin/sh

# The Script using "case" command.

case $1 in
y)
	echo 'This is yes'
	exit 9;;
yes)
	echo 'This is yes'
	exit 9;;

Yes)
	echo 'This is yes'
	exit 9;;
YES)
	echo 'This is yes'
	exit 9;;
Y)
	echo 'This is yes'
	exit 9;;
*)
	echo 'This is not yes'
	exit 1;;
esac
