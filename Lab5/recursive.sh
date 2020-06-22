/*
 
 Program:  Write a shell script to count the number of duplicate lines for the given file using function. 
 

*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

recursive()
{
  for i in `ls $dir1`
   do
        for j in `ls $dir2`
        do
                if [ "$i" == "$j" ]
                then
                echo "Duplicate File: $i"
                ((++count))
                fi
        done
  done
}
echo "Enter first directory:"
read dir1
echo "Enter second directory:"
read dir2
recursive $dir1 $dir2
echo "Number of duplicate files in both $dir1 and $dir2 are: $count"