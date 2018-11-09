#!/bin/bash

bits=({0,1}{0,1}{0,1}{0,1})
a="Bit"
n=$1
b=${bits[$n]}

for pin in {1..4}
do
	b=$a$bit
	let $b=$((n>>pin-1 & 1))
	gpio write $((pin-1)) $(($b))
done	

#for pin in {0..3}
#do
#	b=$((pin + 1))
#	c=$a$b
#done
