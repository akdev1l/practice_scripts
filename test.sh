#!/bin/bash

./first.sh 10 2> ferrors.txt

if [[ $? -ne 0 ]]
then
    echo 'No success :-('
fi

echo '================================'

./first.sh 4 super l33t l1f3 m5j60f tr00p fr333333 2spooky4u EOF 2>> ferrors.txt

if [[ $? -eq 0 ]]
then
    echo 'Have fun!'
fi

echo '================================'

./second.sh invalid_file
echo 'Status: ' $?

echo '================================'

./second.sh invalid_file 2>> serrors.txt
cat serrors.txt

echo '================================'

./second.sh tab_data 2>&1

echo '================================'

((exit=$?))
if [[ $exit -ne 0 ]]
then
    echo 'Boo :-('
else
    echo 'This was a great ride honey...'
fi
