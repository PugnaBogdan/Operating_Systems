#!/bin/bash
users=$(who | awk '{print $1}')
for currentUser in $users; do
	realName=$(grep ^$currentUser: /etc/passwd | awk -F: '{print $5}')
	echo $realName
	ps --no-headers -u $currentUser | sort -k4 -u | awk 'BEGIN{n=0}{n++}END{print n}'
done
