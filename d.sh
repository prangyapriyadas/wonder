 WAP to print 10 9 8 7 6 5 4 3 2 1 .
for i in 10 9 8 7 6 5 4 3 2 1
do
echo “$i”
done
8. WAP that prompts user for a starting value & counts down from there.
echo “Enter any value for countdown”
read a
while test $a -gt 0
do
echo $a
a=`expr $a – 1`
done
