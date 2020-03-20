#!/bin/bash

# 3. AfiČaČi primele 5 linii Či ultimele 5 linii din fiČierele de tip text din directorul curent.
# DacÄ un fiČier are mai puČin de 10 linii, afiČaČi fiČierul complet (comenzi: head, tail, find, file, wc).

for FILE in `find . -type f -name '*.txt'`; do
    echo $FILE:
    if [ `cat $FILE | wc -l` -gt 10 ]; then
        head -n 5 $FILE
        tail -n 5 $FILE
    else
        cat $FILE
    fi
done
