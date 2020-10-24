/*
Write a Shell Program to print given pattern from entered string (FOR ANY WORD).
For example, if entered string is UNIVERSITY, the program should give the output as
U
UN
UNI
UNIV
UNIVE
UNIVER
UNIVERS
UNIVERSI
UNIVERSIT
UNIVERSITY
*/

echo "Printing pattern - UNIVERSITY"
echo "Enter a string:"
read str
str=${str^^}
for ((i=0;i<${#str};i++))
do
        echo ${str:0:i+1}
done
