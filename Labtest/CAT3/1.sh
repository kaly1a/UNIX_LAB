/*
Demonstrate a shell script, to read 3-digit 2 positive integer number.
Firstly, find the sum of individual digits of the first number. After that, find
the multiplication of individual digits of the second number. Finally, sum
of these two results as an output.
(For example: inputs: 157 218 1+5+7=13 2*1*8=16, output: 13+16=29)
*/

echo "Name:Kalyani Nayak"
echo "Regno:1947228"
echo -e "\n-----To find the sum and multiplication of two 3-digit number and then sum the two results-----"
flag=1
while [ $flag -eq 1 ]
do
        echo "Enter first number:"
        read num1
        echo "Enter second number:"
        read num2
        if ! [[ "$num1" =~ ^[0-9]{3}$ && "$num2" =~ ^[0-9]{3}$ ]] # to check if the input is a 3-digit number or not
        then
                echo "Input should be a three digit number only"
                flag=1
        else
                flag=0
        fi
done

sum=0 # to store the total sum of Number1
mul=1 # to store the total product of Number 2

temp1=$num1
temp2=$num2

while [ $temp1 -gt 0 ]
do                                                                                                                                                                                                                         rem=$(( $temp1 % 10 ))                                                                                                                                                                                             temp1=$(( $temp1 / 10 )) # next digit                                                                                                                                                                              sum=$(( $sum + $rem )) # getting the total sum
done
echo "Sum of $num1 : $sum"

while [ $temp2 -gt 0 ]
do
        rem=$(( $temp2 % 10 ))
        temp2=$(( $temp2 / 10 )) # next digit
        mul=`expr $mul \* $rem` # getting the total product
done
echo "Product of $num2 : $mul"
result=$(( $sum + $mul ))
echo "Result : $result"
