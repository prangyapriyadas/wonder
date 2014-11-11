#!/bin/bash
# this is to find the sum,avg, and product 
echo "Enter four integers : "
read a b c d
sum=`expr $a + $b + $c + $d`
avg=`expr $sum / 4`
product=`expr $a * $b *$c * $d`
echo Sum=$sum
echo Average=$avg
echo Product=$product
