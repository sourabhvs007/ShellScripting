#!/bin/bash
# Declare array
declare -a ARRAY
# Link filedescriptor 10 with stdin
#exec 11<&0
# stdin replaced with a file supplied as a first argument
exec < $1
let count=0

while read line; do

    ARRAY[$count]=$line
    ((count++))
done

echo Number of elements: ${#ARRAY[@]}
# echo array's content
echo ${ARRAY[@]}
# restore stdin from filedescriptor 10
# and close filedescriptor 10
# exec 0<&11 11<&-