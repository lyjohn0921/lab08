#!/bin/bash

pause=1
i=1
while [ $i -le 5 ]
do
	for stats in {1,0}
	do
		for pin in {0..3}
		do
			gpio write $pin $stats
		done
		sleep $pause
	done
done 
