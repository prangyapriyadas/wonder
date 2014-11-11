1) Write a shell script to ask your name, program name and enrollment number and print it on the screen.
Echo “Enter your name:”
Read Name
Echo “Enter your program name:”
Read Prog
Echo “Enter your enrollment number:”
Read Enroll
Clear
Echo “Details you entered”
Echo Name: $Name
Echo Program Name: $Prog
Echo Enrolment Number: $Enroll
2) Write a shell script to find the sum, the average and the product of the four integers entered
Echo “Enter four integers with space between”
Read a b c d
Sum =`expr $a + $b + $c + $d`
Avg =`expr $sum / 4`
Dec =`expr $sum % 4`
Dec =`expr \ ($dec \* 1000 \) / 4`
Product =`expr $a \* $b \* $c \* $d`
Echo Sum = $sum
Echo Average = $avg. $dec
Echo Product = $product
3) Write a shell program to exchange the values of two variables
Echo “Enter value for a:”
Read a
Echo “Enter value for b:”
Read b
Clear
Echo “Values of variables before swapping”
Echo A = $a
Echo B = $b
Echo Values of variables after swapping
a = `expr $a + $b`
b = `expr $a – $b`
a = `expr $a – $b`
Echo A = $a
Echo B = $b
4) Find the lines containing a number in a file
Echo “Enter filename”
Read filename
Grep [0-9] $filename
5) Write a shell script to display the digits which are in odd position in a given 5 digit number
Echo “Enter a 5 digit number”
Read num
n = 1
while [ $n -le 5 ]
do
a = `Echo $num | cut -c $n`
Echo $a
n = `expr $n + 2`
done
6) Write a shell program to reverse the digits of five digit integer
Echo “Enter a 5 digit number”
Read num
n = $num
rev=0
while [ $num -ne 0 ]
do
r = `expr $num % 10`
rev = `expr $rev \* 10 + $r`
num = `expr $num / 10`
done
Echo “Reverse of $n is $rev”
7) Write a shell script to find the largest among the 3 given numbers
Echo “Enter 3 numbers with spaces in between”
Read a b c
1 = $a
if [ $b -gt $l ]
then
l = $b
fi
if [ $c -gt $l ]
then
l = $c
fi
Echo “Largest of $a $b $c is $l”
8) Write a shell program to search for a given number from the list of numbers provided using binary search method
Echo “Enter array limit”
Read limit
Echo “Enter elements”
n = 1
while [ $n -le $limit ]
do
Read num
eval arr$n = $num
n = `expr $n + 1`
done
Echo “Enter key element”
Read key
low = 1
high = $n
found = 0
while [ $found -eq 0 -a $high -gt $low ]
do
mid = `expr \( $low + $high \) / 2`
eval t = \$arr$mid
if [ $key -eq $t ]
then
found = 1
elif [ $key -lt $t ]
then
high = `expr $mid – 1`
else
low = `expr $mid + 1`
fi
done
if [ $found -eq 0 ]
then
Echo “Unsuccessful search”
else
Echo “Successful search”
fi
9) Write a shell program to concatenate two strings and find the length of the resultant string
Echo “Enter first string:”
Read s1
Echo “Enter second string:”
Read s2
s3 = $s1$s2
len = `Echo $s3 | wc -c`
len = `expr $len – 1`
Echo “Concatenated string is $s3 of length $len ”
10) Write a shell program to find the position of substring in given string
Echo “Enter main string:”
Read main
l1 = `Echo $main | wc -c`
l1 = `expr $l1 – 1`
Echo “Enter sub string:”
Read sub
l2 = `Echo $sub | wc -c`
l2 = `expr $l2 – 1`
n = 1
m = 1
pos = 0
while [ $n -le $l1 ]
do
a = `Echo $main | cut -c $n`
b = `Echo $sub | cut -c $m`
if [ $a = $b ]
then
n = `expr $n + 1`
m = `expr $m + 1`
pos = `expr $n – $l2`
r = `expr $m – 1`
if [ $r -eq $l2 ]
then
break
fi
else
pos = 0
m = 1
n = `expr $n + 1`
fi
done
Echo “Position of sub string in main string is $pos”
11) Write a shell program to display the alternate digits in a given 7 digit number starting from the first digit
Echo “Enter a 7 digit number”
Read num
n = 1
while [ $n -le 7 ]
do
a = `Echo $num | cut -c $n`
Echo $a
n = `expr $n + 2`
done
12) Write a shell program to find the gcd for the 2 given numbers
Echo “Enter two numbers with space in between”
Read a b
m = $a
if [ $b -lt $m ]
then
m = $b
fi
while [ $m -ne 0 ]
do
x = `expr $a % $m`
y = `expr $b % $m`
if [ $x -eq 0 -a $y -eq 0 ]
then
Echo “gcd of $a and $b is $m”
break
fi
m = `expr $m – 1`
done
13) Write a shell program to check whether a given string is palindrome or not.
Echo “Enter a string to be entered:”
Read str
Echo
len = `Echo $str | wc -c`
len = `expr $len – 1`
i = 1
j = `expr $len / 2`
while test $i -le $j
do
k = `Echo $str | cut -c $i`
l = `Echo $str | cut -c $len`
if test $k != $l
then
Echo “String is not palindrome”
exit
fi
i = `expr $i + 1`
len = `expr $len – 1`
done
Echo “String is palindrome”
14) Write a shell program to find the sum of the series sum=1+1/2+…+1/n
Echo “Enter a number”
Read n
i = 1
sum = 0
while [ $i -le $n ]
do
sum = `expr $sum + \ ( 10000 / $i \)`
i = `expr $i + 1`
done
Echo “Sum n series is”
i = 1
while [ $i -le 5 ]
do
a = `Echo $sum | cut -c $i`
Echo -e “$a\c”
if [ $i -eq 1 ]
then
Echo -e “.\c”
fi
i = `expr $i + 1`
done
15) Write a shell script to find the smallest of three numbers
Echo “Enter 3 numbers with spaces in between”
Read a b c
s = $a
if [ $b -lt $s ]
then
s = $b
fi
if [ $c -lt $s ]
then
s = $c
fi
Echo “Smallest of $a $b $c is $s”
16) Write a shell program to add, subtract and multiply the 2 given numbers passed as command line arguments
add = `expr $1 + $2`
sub = `expr $1 – $2`
mul = `expr $1 \* $2`
Echo “Addition of $1 and $2 is $add”
Echo “Subtraction of $2 from $1 is $sub”
Echo “Multiplication of $1 and $2 is $mul”
