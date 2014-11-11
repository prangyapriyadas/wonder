#!/bin/sh
# This program will print the head and tail of a file
# passed in on the command line.
echo "Printing head of $1..."
head $1
echo "" #this prints an extra return...
echo "Printing tail of $1..."
tail $2
