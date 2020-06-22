/*
 
 Program: Write a shell script to demonstrate the following array related commands and operations
 1.DISPLAY ALL ARRAY ELEMENTS
 2. DISPLAY ALL ELEMENTS IN A RANGE
 3. DISPLAY THE NUMBER OF ARRAY ELEMENTS
 4. REPLACE A SUBSTRING IN AN ARRAY ELEMENT
 5. SORT AND DISPLAY THE ARRAY ELEMENT IN ASCENDING ORDER AND DESCENDING ORDER
 6. COPY AN ARRAY ELEMENTS TO ANOTHER ARRAY 
 7. DISPLAY THE SUM AND AVERAGE OF ODD POSITION ELEMENTS AND EVEN POSITION ELEMENTS OF AN ARRAY AND FIND WHICH POSITION NUMBERS ARE HAVING GREATER AVERAGE

 

*/


echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

while true
do
        unset arr[@]
        echo "Press Ctrl+C to exit"
        echo "Enter the limit for array:"
        read lim
        echo "Enter the elements into the array:"
        for((i=0;i<lim;i++))
        do
                read arr[$i]
        done

        echo "1.display all array elements"
        echo "2.display all elements in a range"
        echo "3.display the number of array elements"
        echo "4.replace a substring in an array element"
        echo "5.Sort in ascending and descending order"
        echo "6.copy array elements to another array"
        echo "7.find sum and avg of odd and even position seperately and check which avg is more"
        echo "Enter the choice:"
        read ch
        case $ch in
                1)
                        echo "Elements in the array are: ${arr[@]}"
                        ;;
                2)
                        echo "Enter the range-"
                        echo "Enter the starting range:"
                        read start
                        echo "Enter the ending range:"
                        read end
                        echo "Elements in the range $start and $end are:"
                        for((i=0;i<lim;i++))
                        do
                                if [ ${arr[$i]} -ge $start -a ${arr[$i]} -le $end ]
                                then echo -n " ${arr[i]} "
                                fi
                        done
                        ;;
                3)
                        echo "Number of elements present in the array are: ${#arr[*]}"
                        ;;
                4)
                        echo "Enter the index position of string to modify:"
                        read index
                        echo "Enter the new string to replace:"
                        read new
                        arr[index]=$new
                        echo "Array after replacing element is: ${arr[@]}"
                        echo ""
                        ;;
                5)
                        for((i=0;i<lim;i++))
                        do
                                for((j=$i;j<lim;j++))
                                        do
                                                if [ ${arr[$i]} -gt ${arr[$j]} ]
                                                then
                                                        temp=${arr[$i]}
                                                        arr[$i]=${arr[$j]}
                                                        arr[$j]=$temp
                                                fi
                                        done
                        done
                        echo "Array after sorting in ascending order is: ${arr[@]}"
                        echo -n "Array after sorting in descending order is:"
                        for((i=$(($lim-1));i>=0;i--))
                        do
                                echo -n "${arr[i]} "
                        done
                        ;;
                6)
                        echo "Copying arr array to new_arr -"
                        new_arr=("${arr[@]}")
                        echo "New array after copying is: ${new_arr[@]}"
                        echo "Copying completed!"
                        ;;
                7)
                        odd_sum=0
                        even_sum=0
                        odd_count=0
                        even_count=0
                        for((i=1;i<lim;i+=2))
                        do
                                odd_sum=$((odd_sum + arr[$i]))
                                odd_count=$((odd_count + 1))
                        done
                        for((i=0;i<lim;i+=2))
                        do
                                even_sum=$((even_sum + arr[$i]))
                                even_count=$((even_count + 1))
                        done
                        echo "Odd Sum is: $odd_sum"
                        echo ""
                        echo "Even Sum is: $even_sum"
                        odd_avg=`echo "$odd_sum/$odd_count"|bc`
                        echo ""
                        echo "Odd average is: $odd_avg"
                        even_avg=`echo "$even_sum/$even_count"|bc`
                        echo ""
                        echo "Even average is: $even_avg"

                        if [ $odd_avg -gt $even_avg ]
                        then
                                echo -n "Odd average is greater than Even average"
                        else
                                echo -n "Even average is greater than Odd average"
                        fi
                        echo ""
                        ;;
                *)
                        echo "Wrong input..Try again!!!!"
                        ;;
        esac
        echo "Program exited!!"
        echo
        echo
done
