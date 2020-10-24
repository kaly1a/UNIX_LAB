echo "Find the number that occurs only once in an array"

echo -n "Enter the limit for an array:"
read lim
echo "Enter the elements into the array:"
for(( i=0;i<lim;i++ ))
do
        read arr[$i]
done
for(( i=0;i<lim;i++ ))
do
        flag[$i]=0
done
for(( i=0;i<lim;i++ ))
do
   for(( j=i+1;j<lim;j++ ))
   do
        if [ ${flag[$j]} -eq 0 ]
        then
            if [ ${arr[$i]} -eq ${arr[$j]} ]
            then
                flag[$i]=1
                flag[$j]=1
            fi
        fi
   done
done

for(( i=0;i<lim;i++ ))
do
        if [ ${flag[$i]} == 0 ]
        then
                echo "Element occurring only once is/are: ${arr[$i]}"
        fi
done
