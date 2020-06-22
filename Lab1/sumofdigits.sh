/*

Program: Write script to print given numbers sum of all digit, For eg. If no is 123 it&#39;s
sum of all digit.
 
*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

echo "Print the sum of the digits"

echo "Enter a number:"
read num
rem=0
sum=0
while [ $num -gt 0 ]
do
  rem=$(( $num % 10 ))
  num=$(( $num / 10 ))
  sum=$(( $sum + $rem ))
done
echo "Sum of all digit is $sum"