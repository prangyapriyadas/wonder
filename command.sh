#!/bin/bash
#this is command line argument programme
echo "Enter The Variable: "
read $1 $2
add=`expr $1 + $2`
sub=`expr $1 - $2`
mul=`expr $1 \* $2`
echo Addtion 
echo Subtraction
echo Multiplication
