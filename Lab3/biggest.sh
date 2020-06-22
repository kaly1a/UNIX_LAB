/*
 
 Program: Write Script to find out biggest number from given three nos. Nos are
 input as command line argument. Print error if sufficient arguments are
 not supplied.
 

*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"


num1=$1
num2=$2
num3=$3
if [ $# -ne 3 ]
then
        echo "Please Enter 3 numbers and try again!"
        exit 1
fi

if [ $num1 -gt $num2 -a $num1 -gt $num3 ]
then
        echo "$num1 is biggest number"
elif [ $num2 -gt $num1 -a $num2 -gt $num3 ]
then
        echo "$num2 is biggest number"
elif [ $num3 -gt $num1 -a $num3 -gt $num2 ];
then
        echo "$num3 is biggest number"
else
        echo "Sorry cannot guess the number"
fi
