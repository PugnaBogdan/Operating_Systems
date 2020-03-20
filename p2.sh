#!/bin/bash
found=0
for file in $(find $1 -type f -name *.c); do
	linesCount=$(wc $file | awk '{print $1}')
	if [ $linesCount -gt 500 ]; then
		echo $file $linesCount
		found=$((found+1))
	fi
	if [ $found -ge 10 ]; then
		break
	fi
done

