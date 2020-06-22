/*

 Program: Delete the duplicate files present in two directories and store the
 deleted filenames in a file called ‘duplicate.txt’
 

*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

text="duplicate.txt"
echo "Enter the name of first directory:"
read dir1
echo "Enter the name of second directory:"
read dir2
comm -12 <(ls "$dir1") <(ls "$dir2") > duplicate.txt
cat duplicate.txt
echo "Deleted Successfully"
while IFS= read -r line
do
rm "$dir2/$line"
done< "$text"