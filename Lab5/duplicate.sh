/*
 
 Program:  Write a shell script to count the number of duplicate lines for the given file using function. 
 

*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

duplicate()
{
dup= sort $fname |uniq -c -d
}

echo  "Enter the file name:"
read fname
duplicate $fname
