#!/bin/bash
while [ 0 -eq 0 ]
do
	./setbits.sh $(($RANDOM % 15))
	sleep 0.25
done
