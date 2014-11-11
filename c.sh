WAP to take string as command line argument and reverse it.
echo “ Enter the string you want to reverse”
read string
len=`echo –n $string |wc –c`
echo “No. of characteristics : $len”
while test $len –gt 0
do
rev =$rev `echo $string | cut –c $len`
len=`expr $len – 1`
done
echo “The reverse string is : $rev”
