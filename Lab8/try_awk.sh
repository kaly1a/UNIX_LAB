/*
Create a text file of your choice and execute the following:
1. awk -f program-file input-file
2. awk '{ print $3 }' input file
3. awk '/0.5/ { print $1 }' input file
4. awk '/^[0-9][0-9]/ { print $1 }' input file
5. awk '$2 ~ /ia/ { print $1 }' input file
6. awk '$2 !~ /ia/ { print $1 }' input file
7. awk '$3 &gt; 50 { print $1 }' input file
8. awk '$4 == 31, $4 == 33 { print $0 }' input file
9. awk 'BEGIN { print "Start Processing." }; { print $3 }; END {print "End Processing."}' input file
10. awk 'BEGIN { FS = "." } { print $1 }' input file
11. Print csv file with three fields but with tab-separated
*/
while true
do
        echo "Press Ctrl+C to exit"
        echo "1. Executing command from program-file on input-file"
        echo "2. Print the third field of each record in input-file"
        echo "3. Print the first field of record that contains 0.5"
        echo "4. Print the first field of record starts with digits"
        echo "5. Print the first field of each record whose second field contains 'ia'"
        echo "6. Print the first field of each record whose second field does not contain 'ia'"
        echo "7. Print first field of all records whose third field is greater than 50"
        echo "8. Print all the contents of the input-file where the fourth field equals to 31 and 33"
        echo "9. Print Start Processing. at the beginning, then print the third field of the record and at last print End Processing."
        echo "10. Set field separator to '.' and print all the records"
        echo "11. Print csv file with three fields but with tab-separated"
        echo "Select an option:"
        read option
        case $option in
        1)
                        echo "Input File:"
                        cat input-file.txt
                        echo "Program File:"
                        cat program-file.txt
                        echo
                        echo "OUTPUT:"
                        awk -f program-file.txt input-file.txt
                        echo
                        ;;
        2)
                        echo "Input File:"
                        cat input-file.txt
                        echo
                        echo "OUTPUT:"
                        awk '{print $3}' input-file.txt
                        echo
                        ;;
        3)
                        echo "Input File:"
                        cat input-file.txt
                        echo
                        echo "OUTPUT:"
                        awk '/0.5/{print $1}' input-file.txt
                        echo
                        ;;
         4)
                        echo "Input File:"
                        cat input-file.txt
                        echo
                        echo "OUTPUT:"
                        awk '/^[0-9][0-9]/{print $1}' input-file.txt
                        echo
                        ;;
        5)
                        echo "Input File:"
                        cat input-file.txt
                        echo
                        echo "OUTPUT:"
                        awk '$2 ~/ia/{print $1}' input-file.txt
                        echo
                        ;;
        6)
                        echo "Input File:"
                        cat input-file.txt
                        echo
                        echo "OUTPUT:"
                        awk '$2!~/ia/{print $1}' input-file.txt
                        echo
                        ;;
        7)
                        echo "Input File:"
                        cat input-file.txt
                        echo
                        echo "OUTPUT:"
                        awk '$3>50 {print $1}' input-file.txt
                        echo
                        ;;
        8)
                        echo "Input File:"
                        cat input-file.txt
                        echo
                        echo "OUTPUT:"
                        awk '$4==31, $4==33 {print $0}' input-file.txt
                        echo
                        ;;
        9)
                        echo "Input File:"
                        cat input-file.txt
                        echo
                        echo "OUTPUT:"
                        awk 'BEGIN {print "Start Processing."};{print $3};END{print "End Processing."}' input-file.txt
                        echo
                        ;;
        10)
                        echo "Input File:"
                        cat input-file.txt
                        echo
                        echo "OUTPUT:"
                        awk 'BEGIN{FS="."}{print $1}' input-file.txt
                        echo
                        ;;
        11)
                        echo "Printing the contents of 'nameemailavg.csv' file"
                        cat newnames.tsv
                        ;;
        *)
                        echo "Invalid input!!!"
                        ;;
        esac
        echo "Program executed!!"
        echo
        echo
done
