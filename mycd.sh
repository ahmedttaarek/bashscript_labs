#! /usr/bin/bash

cd $1
echo $1

if [[ $1 == "" ]]
then
echo "You are in the home directory"
else
echo "Now you are in $1"
fi

