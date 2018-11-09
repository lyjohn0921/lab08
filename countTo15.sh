#!/bin/bash
count=1
while [ $count -le 15 ]
do
	./setbits.sh $count
	sleep 1
	((count++))
done
