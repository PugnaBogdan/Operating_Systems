#!/bin/bash
df | tail -n +2 | while read -r volume; do
	usage=$(echo $volume | awk '{print $5}' | sed 'y/%/ /')
	capacity=$(echo $volume | awk '{print $2}')
	capacity=$(($capacity/1000000))
	if [ $usage -le 10 -o $capacity -le 1 ]; then
		echo $volume | awk '{print $1}'
	fi
done
