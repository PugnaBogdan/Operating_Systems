#!/bin/bash
filename="$1"
result=""
for username in $(awk '{print $1}' $filename); do
	if grep -q "^$username:" passwd; then
		result="$result$username@scs.ubbcluj.ro, "
	fi
done
echo "${result::-2}"
