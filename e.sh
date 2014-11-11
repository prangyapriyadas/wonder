WAP that accepts initial value as a command line argument for ex.         If user writes contdown2 12 it should display the value from 12 to 1.
a=$1
while test $a -gt 0
do
echo $a
a=`expr $a – 1`
done
10. WAP that replaces all “*.txt” file names with “*.txt.old” in the current.
for i in *.txt
do
mv “ $i ” “ $i”.old
done
