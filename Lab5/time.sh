/*
 
 Program:  Write a shell script to count the number of duplicate lines for the given file using function. 
 

*/
echo "Name : Kalyani Nayak"
echo "Reg. No. : 1947228"

echo -n "Enter your name: "
read name

function input_time {
        hrs=`date "+%H"`
        mins=`date "+%M"`
        clock_time=`expr $hrs \* 60 + $mins`
        message=""
        if [[ $clock_time -lt 720 ]]
        then
                message="Morning!"
        elif [[ $clock_time -ge 720 && $clock_time -lt 1020 ]]
        then
                message="Afternoon!"
        elif [[ $clock_time -ge 1020 && $clock_time -lt 1140 ]]
        then
                message="Evening!"
        elif [[ $clock_time -ge 1140 && $clock_time -lt 1440 ]]
        then
                message="Night!"
        fi
        echo "$message"
}

echo ""
cur_time=$(date +"%T")
echo "Time : $cur_time"
echo "Hello $name,"
echo "Good `input_time`"
echo "$message"
echo ""