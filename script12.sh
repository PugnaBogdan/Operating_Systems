#!/bin/bash

# 2. AfiČaČi numele fiČierelor dintr-un director dat ca parametru care conČin numere de peste 5 cifre.

DIR=$1

for FILE in `find $DIR -type f`; do
    if grep -q "[0-9]\{6,\}" $FILE; then
        echo $FILE
    fi
done
