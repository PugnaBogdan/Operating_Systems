#!/bin/bash
while [ -n $1 ]
do
	if [-z $1 ]
	then
		break
	fi
	if [ -f $1 ]
	then
              file=`wc -m -l $DF | awk '{print $3; print $2; print $1;}'`
                echo $file
        else
                subdir=`find $1 -type f`
                declare -i nr=0
                for f in $subdir
                do
                        nr=$nr+1
                done
                echo $1 $nr
        fi
done