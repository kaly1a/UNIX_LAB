/*
Write a shell script to replace the string Christ University as CHRIST(Deemed to be University) in the given text document(christ.txt).
*/

echo "Enter the file name:"
read file
str="Christ University"
str1="CHRIST (Deemed to be University)"
if [[ `grep "$str" $file` ]]
then
sed -io "s/$str/$str1/g" $file
cat $file
fi
