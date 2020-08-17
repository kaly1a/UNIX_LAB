/*
Shell script that accepts a filename, starting and ending line numbers as arguments and displays all the lines between the given line numbers.
*/

echo "enter the filename"
read fname
echo "enter the starting line number"
read start
echo "enter the ending line number"
read end
sed -n $start,$end\p $fname | cat > newline
cat newline
