/*
 
 Program: Create two files with the name of Test_File_One.txt and
Test_File_two.txt which should contain some common words and
distinct words. Display the common words and store it in a new file.


*/

grep -Fxf Test_File_One.txt Test_File_Two.txt>common.txt
cat common.txt
