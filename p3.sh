#!/bin/bash

for file in $(find $1 -type f -name "*.log"); do

	sort -o $file $file 

done	
