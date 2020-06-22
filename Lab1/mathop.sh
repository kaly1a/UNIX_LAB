/*
 
 Program: Write Script, using case statement to perform basic math operation as
follows: + addition, - subtraction, x multiplication and / division. 
 

*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

echo "Math Operation"
echo "Enter two numbers:"
read a
read b
echo "Enter your choice:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch

case $ch in
 1)echo Addition : $(expr $a + $b)
 ;;
 2)echo Subtraction : $(expr $a - $b)
 ;;
 3)echo Multiplication : $(expr $a \* $b)
 ;;
 4)echo Division : $(expr $a / $b)
 ;;
 *)echo "Invalid Output"
esac