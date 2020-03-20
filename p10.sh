#!/bin/bash
last -s 20190305000000 | head -n -2 | while read -r line; do
	month=$(echo $line | awk '{print $5}')
	day=$(echo $line | awk '{print $6}')
	hour=$(echo $line | awk '{print $7}')
	echo $(date -d '$month $day $hour' +%s)
done
