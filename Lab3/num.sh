/*
 
 Program: Write shell script using for loop to print the following patterns on screen
 

*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"


input=0

echo -n "Enter a Number between (5 to 9) : "
read input

if ! [ $input -ge 5 -a $input -le 9 ]
then
   echo "Please Enter a number between 5 to 9"
   exit 1
fi

clear

for (( i=1; i<=input; i++ ))
do
    for (( s=input; s>=i; s-- ))
    do
       echo -n " "
    done
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " $i"
    done
    echo ""
done