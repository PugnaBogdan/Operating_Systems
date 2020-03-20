#!/bin/bash

# 10. Display the session count and full names of all the users who logged into the system this month, sorting the output by the session count in descending order. Use the -s and/or -t options of command last to get this month's sessions, and the command date to generate the required timestamp in the expected format.

IFS=$'\n'

FIRST_DAY_OF_MONTH=$(date -d "`date +%Y%m01`" +%Y-%m-%d)

RESULT=""

for USER in `last -s $FIRST_DAY_OF_MONTH -t now | head -n -1`; do
    USERNAME=`echo $USER | awk '{print $1}'`
    SESSION=`echo $USER | awk '{print $NF}'`
    if [ "$USERNAME" != "reboot" ]; then
        FULLNAME=`finger $USERNAME -s | tail -n +2 | awk '{print $2, $3}'` 
        RESULT="$RESULT$USERNAME $SESSION $FULLNAME${IFS}"
    fi
done

echo "$RESULT" | head -n -1 | sort -r -k2,2
