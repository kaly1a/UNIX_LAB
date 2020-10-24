/*
Write a shell script which accepts a directory name through
command line and finds the total number of files in that
directory whose name starts with 'a' or 'A' and stores the
output in a file called output.txt. Include necessary
validation.
*/

echo "Shell script to accept a directory name and finds the total number of
files in the directory starting with 'a' or 'A'"
echo -n "Enter a directory name:"
read dir
if [ -d "$dir" ]
then
        cd $dir
        ls | grep ^a -ci > output.txt
        echo "Output.txt contains:"
        cat output.txt
else
        echo "Input is not a directory!!!"
fi
