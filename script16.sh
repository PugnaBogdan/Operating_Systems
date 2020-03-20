#!/bin/bash


# 6. 
Sa se scrie un fisier de comenzi care are ca parametri triplete formate dintr-un nume de fisier, 
un cuvant si un numar k. Pentru fiecare astfel de triplet, se vor afisa toate liniile fisierului care contin cuvantul 
respectiv exact de k ori.

# (comenzi: shift, awk)


IFS=$'\n'


FILE=$1

WORD=$2
K=$3


while [ ! -z "$FILE" ]; do

    for LINE in `grep $WORD $FILE`; do
   
     for ((i=0; i < $K; i++)); do
      
      echo $LINE
     
   done
  
  done

  
  shift 3
   
 
    FILE=$1
  
  WORD=$2
 
   K=$3
done
