#!/bin/bash

#This file was created on Wed Jan 23 05:40:28 IST 2019

#demo on int -or- string.sh

a=1706
let "a +=1"
echo "a = &a"
echo "a = $a"
echo
echo
#subsiting 17 with ii
b=${a/17/ii}
#decremanting the value by - 1
declare -i b
echo "value after decrementing the value b = $b"
echo

c=ii06

echo "c = $c"
#substituting c value
d=${c/ii/10}
let "d +=1"
echo "d = $d"

