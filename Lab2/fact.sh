/*
 
 Program: Factorial of a given number.
 

*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

echo "Enter a number to calculate the factorial:"
read num
n=$num
fact=1
while [ $num -gt 1 ]
do
fact=$((fact * num))
num=$((num-1))
done
echo "Factorial of $n is: $fact"