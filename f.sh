A “lucky number” is one whose individual digits add upto 7, in successive additions. For ex. 62431 is a lucky no. (6+4+2+3+1=16, 1+6=7). Find all “lucky numbers” between 1000 and 10000.
echo “lucky number between 1000 to 10000:”
a=1001
while [ $a –lt 10000]
do
n=$a
sd=0
sum=0
while [ $n –gt 0 ]
do
sd=$(( $n % 10 ))
n=$(( $n / 10))
sum=$(( $sum + $sd))
done
n=$sum
sumdig=0
while [ $n –gt 0 ]
do
sd=$(( $n % 10 ))
n=$(( $n / 10))
sumdig=$(( $sumdig + $sd))
done
if [ $sumdig –eg 10 ]
then
n=$sumdig
sd=$(( $n % 10 ))
n=$(( $n / 10))
sumdig=$(( $sumdig + $sd))
fi
if [ $sumdig –eq 7]
then
echo “lucky Number : $a”
fi
a=$(( $a + 1))
done
