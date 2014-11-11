#!/bin/sh
# Get the files:
FILES=`ls -l`
for FILE in $FILES
do
IDX=`expr index $FILE .`
if [ "$IDX" == 0 ]; then
IDX=`expr length $FILE`
else
IDX=`expr $IDX - 1`
 fi
SUB=`expr substr $FILE 1 $IDX`
echo "Sub File: $SUB"
done
