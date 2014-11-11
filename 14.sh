#!/bin/bash
num=$1
val=`echo $num|grep -c"[[:digit:]]"`
if["$val" -gt 0];then
echo "enter $num is integer"
else
echo"enter $num is string"
fi
