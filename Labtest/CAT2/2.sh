/*
Write a shell program to display the following pattern
55555
3333
111
00
-1
00
111
3333
55555
*/

echo "Printing Pattern - Digits"
#echo -ne "Enter no of MaxNum : "
#read level
temparr=(-1 0 1 3 5)
#to print first half
for i in {5..1}
do
        #temp=`expr $i - 1`
        temp=$i
        while [ $i -ge 0 ]
        do
                echo -ne "${temparr[$temp]}"
                ((--i))
        done
        echo
done

echo "-1"


#to print second half
for i in {1..5}
do
        #temp=`expr $i - 1`
        temp=$i
        while [ $i -ge 0 ]
        do
                echo -ne "${temparr[$temp]}"
                ((--i))
        done
done
