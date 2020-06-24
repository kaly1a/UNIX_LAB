/*
Write a MENU DRIVEN Shell Script to demonstrate the following: 


1.	Write a shell program to find the number of unique words and vowels in a file along with line number. 

2.	Write a shell script to display the frequency of occurrence of each character present in the text document and display the character which has the maximum frequency of occurrences and store it in a separate file.

3.	Write a shell script to replace the string Christ University as CHRIST (Deemed to be University) in the given text document.
*/

echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

while true
do
        echo "Press Ctrl+C to exit"

        echo "1.Find the number of unique words and vowels in a file along with line number"
        echo "2.Display the frequency of each character occurrence in a file and points the most occurred character also"
        echo "3.Replace a string with another string"
        echo "Select an option:"
        read option
        case $option in
        1)
                        echo "Enter the file name :"
                        read file
                        echo "Unique words in $file are as follows:"
                        grep -o -E '\w+' $file | sort -u
                        echo -n "Total number of unique words in $file:"
                        grep -o -E '\w+' $file | sort -u | wc -l
                        echo "Vowels present in $file are:"
                        grep  -o -n [AaEeIiOoUu] $file | sort -u
                        echo "Vowels present in $file are:"
                        grep  -o -n [AaEeIiOoUu] $file | sort -u | wc -l
                        ;;
        2)
                        echo "Enter the file name:"
                        read file
                        mostocc=0
                        echo "Enter the new file name to store the character and their occurrences:"
                        read new
                        for char in {a..z}
                        do
                                echo "$char - `grep -io "$char" $file | wc -l`"
                                echo "$char - `grep -io "$char" $file | wc -l`">>$new
                                count=`grep -io "$char" $file | wc -l`
                                if [[ $count -ge $mostocc ]]
                                then
                                        mostocc=$count
                                else
                                        continue
                                fi
                        done
                        for char in {a..z}
                        do
                                if [[ `grep -io "$char" $file | wc -l` -eq $mostocc ]]
                                then
                                        echo "$char is the most occurred character in $file"
                                fi
                        done
                        ;;
        3)
                        echo "Enter the file name:"
                        read file
                        str="Christ University"
                        str1="CHRIST (Deemed to be University)"
                        if [[ `grep "$str" $file` ]]
                        then
                                sed -io "s/$str/$str1/g" $file
                                cat $file
                        fi
                        ;;
        *)
                        echo "Invalid input!!!"
                        ;;
        esac
        echo "Program executed!!"
        echo
        echo
done
