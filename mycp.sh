#! /usr/bin/bash

if [[ -f $1 ]]
then
echo "$1 is a file"
else
echo "$1 is not a file"
fi

cp $1 $2 ./newfile/


