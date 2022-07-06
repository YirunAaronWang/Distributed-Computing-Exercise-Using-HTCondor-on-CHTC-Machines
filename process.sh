#!/bin/bash


file=$1


cat $file | sed -e 's/	/\t/g' | sed 's/[[:space:]]/\n/g'|
sed '/^[[:space:]]*$/d'| sort -k 1 > out$file
