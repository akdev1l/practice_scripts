#!/bin/bash

echo -n "Hello, press enter to continue..."
read

x=$((0))

if [[ $# -gt 8 ]]
then
    for item in $*
    do
        echo $item | sed 's/[0-9]/NUMBER/g' | tee 'hello.txt'
    done
elif [[ $# -eq 1 ]]
then
    count=$1
    while [[ $count -ge 1 ]]
    do
        x=$((x + count))
        count=$((count - 1))
    done
    echo "x is $x"
else
    echo "Incorrect number of arguments"
    exit 1
fi
