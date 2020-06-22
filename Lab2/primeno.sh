/*
 
 Program: To check whether a given number is prime or not. Also try to print
 prime numbers between a user defined range.
 

*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

echo "Enter a number:"
read num
flag=0
beg=2
while test $beg -le `expr $num / 2`
do
if test `expr $num % $beg` -eq 0
then
flag=1
fi
beg=`expr $beg + 1`
done
if test $flag -eq 1
then
echo "$num is not a prime number"
else
echo "$num is a prime number"
fi
lower_lim=0
upper_lim=0
echo "Enter the Range:"
echo "Enter lower limit:"
read lower_lim
echo "Enter upper limit:"
read upper_lim
for((i=lower_lim; i<=upper_lim; i++))
do
flag=0
for((j=2; j<i; j++))
do
if test `expr $i % $j` -eq 0
then
flag=1
fi
done
if test $flag -eq 0
then
echo $i
fi
done
