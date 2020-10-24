/*
Write an awk script that will calculate the sum and average of the numbers in three columns.
*/
echo "Kalyani Nayak"
echo -e "1947228\n"

echo "Input File:"
cat file.txt
echo ""

printf "SUM:"
awk '{SUM1+=$1}END{printf " %d", SUM1}' file.txt
awk '{SUM2+=$2}END{printf " %d", SUM2}' file.txt
awk '{SUM3+=$3}END{printf " %d\n",SUM3}' file.txt

printf "AVERAGE:"
awk '{AVG1=((SUM1+=$1)/2)}END{printf " %d",AVG1}' file.txt
awk '{AVG2=((SUM1+=$2)/2)}END{printf " %d",AVG2}' file.txt
awk '{AVG3=((SUM3+=$3)/2)}END{printf " %d\n\n",AVG3}' file.txt
