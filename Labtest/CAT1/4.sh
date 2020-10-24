echo "Shell script to remove the lines beginning and ending with a particular character"

echo -n "Enter a letter:"
read letter
echo -n "Enter a file:"
read file
echo "Deleting lines starting with $letter"
sed '/^$letter/d' $file
echo "Deleting lines ending with $letter"
sed '/$letter$/d' $file
