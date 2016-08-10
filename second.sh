#!/bin/bash

if [[ $# -lt 1 ]]
then
    echo "Enter filename: "
    read filename
else
    filename=$1
fi

if [[ -f $filename ]]
then
    awk -F'\t' '$1 > $3 {print NR, $4, ">>", $2}' $filename | tr 'a-z' 'A-Z' 2> /dev/null
else
    echo 'Error: File does not exist' >&2
    exit 1
fi
