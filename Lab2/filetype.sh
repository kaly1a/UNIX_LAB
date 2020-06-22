/*
 
 Program: Write a shell script that prompts the user for a name of a file or
 directory and reports if it is a regular file, a directory, or other type
 of file. Also perform an ls command against the file or directory with
 the long listing option.
 

*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

echo "Enter any file or directory name:"
read file
if [ -d $file ]
then
echo "$file is a directory"
elif [ -f $file ]
then
echo "$file is a regular file"
else
echo "$file is an other type of file"
fi
ls -l $file