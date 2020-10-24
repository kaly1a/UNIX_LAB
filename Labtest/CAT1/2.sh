echo "Check a given string is palindrome or not without using inbuilt function"

len=0
i=1
echo -n "Enter a string:"
read str
if [[ $str =~ [a-zA-Z] ]]
then
        echo "Input contains only alphabets"
else
        echo "Input is not correct!!"
fi

len=`echo $str | wc -c`
len=`expr $len - 1 | bc`
mid=`expr $len/2 | bc`

while [ $i -le $mid ]
do
        s1=`echo $str|cut -c $i`
        s2=`echo $str|cut -c $len`
        if [ $s1 != $s2 ]
        then
                echo "String is not palindrome!!!"
                exit
        fi
        i=`expr $i + 1 |bc`
        len=`expr $len -1`
done
echo "String is palindrome"
