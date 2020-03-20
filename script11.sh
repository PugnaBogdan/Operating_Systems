#!/bin/bash

# 1. CalculaČi numÄrul mediu de linii din fiČierele text dintr-un director dat ca parametru.
# (comenzi: find, file, wc).

DIR=$1

TOTAL_LINES=0
TOTAL_FILES=`find $DIR -type f -name '*.txt' | wc -l`

for FILE in `find $DIR -type f -name '*.txt'`; do
    LINES_IN_FILE=`cat $FILE | wc -l`
    TOTAL_LINES=$(($TOTAL_LINES + $LINES_IN_FILE))
done;

if [ ! $TOTAL_FILES -eq 0 ]; then
    AVERAGE_LINES=$(($TOTAL_LINES / $TOTAL_FILES))
    echo The avg. no. of lines from all text files in the given directory: $AVERAGE_LINES
else
    echo No text files found in the given directory.
fi
