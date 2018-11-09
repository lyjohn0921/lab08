#!/bin/bash
n=1
pause=0.25
./setbits.sh $n
sleep $pause
while [ $n -le 8 ] && [ $n -ge 1 ]
do
	until [ $n -ge 8 ]
	do
		((n<<=1))
		./setbits.sh $n
		sleep $pause
	done
	
	until [ $n -le 1 ]
	do
		((n>>=1))
		./setbits.sh $n
		sleep $pause
	done
done
