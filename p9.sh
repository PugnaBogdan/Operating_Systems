#!/bin/bash

for file1 in $(find $1 -type f); do

	for file2 in $(find $1 -type f); do

		f1hash=`md5sum $file1 | awk '{print $1}'`

		f2hash=`md5sum $file2 | awk '{print $1}'`

		file1=`echo $file1 | awk -F/ '{print $NF}'`

		file2=`echo $file2 | awk -F/ '{print $NF}'`

		if [ "$file1" != "$file2" ]; then
	
		if [ "$f1hash" = "$f2hash" ]; then

				echo $file1 $file2

			fi
	
	fi

	done

done

