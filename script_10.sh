#!/bin/sh

# Q.10 Given a process ID (PID) as input, write a script that checks whether the process is still running or not. (hint: use ps and sleep commands) 

# Solution :-

pid=$1
while true
do
y=`ps -e | awk -v x=$pid 'FNR == 1{next}''$1 == x {print "running"}'`
	if [ -z $y ]		# The '-z' flag here causes test to check whether the string("y") is empty.
	then
		echo The process with PID $pid is not running.
	else
		echo The process with PID $pid is running.
	fi

	sleep 10s
done
