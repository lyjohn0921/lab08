#!/bin/bash

for pin in {0..3}
do
	gpio mode $pin out
	gpio write $pin 0
done
