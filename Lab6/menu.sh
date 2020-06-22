/*
 Program: Write a MENU DRIVEN Shell Script to demonstrate the following: 

1.Demonstrate the commands to change the ownership of a file.

2.Demonstrate the commands to change the group of user.

3.Demonstrate the recursive option to assign file permission.

4.Create a shell script (Permission.sh) to assign the file privileges at the time of creating a file based on the Roles as mentioned below. (Use switch case) 
	ROLE			FILE PERMISSION
	Administrator	           R W X
	Student		           R – –
	Faculty 		   R W –  

5.Write a shell script to group and compress the file based on their file extension. 
6.Write a shell script to archive the files which are not accessed for past three months.
7.Create a compressed file called Collection.tar and move all the files starting with a specific character to the directory Collection.tar
8.Compress the files from the current directory which consume more than 1GB
9.Group and compress the files based on their file permission.(For example compress the file with ‘read’ only/’read&write’/’read,write&execute’)
*/


echo "Name: Kalyani Nayak"
echo "RegNo: 1947228"

while true
do
        echo "Press Ctrl+C to exit"

        echo "1.Change the owner of the file"
        echo "2.Change the group of user"
        echo "3.Assign file permission with the help of recursive option"
        echo "4.Shell script to assign file privilege at the time of file creation as given in the question"
        echo "5.Shell script to group and compress files based on the file extension"
        echo "6.Shell script to archive files which are not being accessed for past three months"
        echo "7.Creating a compressed file and moving all the similar files to that directory"
	echo "8.Compress the files from current directory which consume more than 1 GB"
	echo "9.Group and compress the files based on their file permission"
        echo "Enter the choice:"
        read ch
        case $ch in
                1)
                        echo "Enter the file name to change owner of :"
			read file
			sudo chown kalyani1:kalyani1 $file
			echo -n "Printing the changed owner:"
		        ls -l $file
                        ;;
                2)
                        echo -n "Enter the name of a group:"
			read g_name
			sudo groupadd $g_name
			echo -n "Enter the username:"
			read user
			sudo usermod -a -G $g_name $user
			echo "Group $user is a part of:"
			groups $user
                        ;;
                3)
                        echo "Enter the name of a new directory:"
			read dname
			echo "Now creating $dname directory:"
			mkdir $dname
			echo "Creating 20 files in $dname:"
			touch $dname/file{1..20}
			echo "Enter permission in numeric form:"
			read per
			chmod -R $per $dname
			echo -n "Changed Permission:"
			ls -l $dname
                        ;;
                4)
			echo -n "Create a file:"
			read file
			touch $file
			echo "Select role:"
			echo "a.Administrator"
			echo "b.Student"
			echo "c.Faculty"
			read role
			case $role in
   			   "a")
				 chmod u=rwx $file
				 ;;
			   "b")
				 chmod u=r $file
				 ;;
			   "c")
				 chmod u=rw $file
				 ;;
			esac
                        ;;
                5)
                        echo "Enter the name of a new directory:"
			read dname
			mkdir $dname
			echo "Creating multiple files in $dname:"
			cd $dname
			touch a.txt b.txt c.txt video.mp4 image.jpg img.jpg design.mp4 car.sh new.sh
			cd ..
			ext=( $(ls -X $dname | egrep -o "[.]\w+" | uniq) )

			for i in ${ext[@]}
			do
				tar -cvf $dname/${i:1}.tar $dname/*$i
			done
                        ;;
                6)
                        echo "Archiving those files that are older than 3 months:"
			find . -mtime +30 | xargs zip old_files.zip
                        ;;
                7)
                        echo "Enter the starting character:"
			read beg
			tar -cvf Collection.tar $beg*
                        ;;
		8)
			echo "Creating some files which are more than 1 GB:"
			truncate -s 1M 1mbred.txt
			truncate -s 2M 2mbblue.txt
			truncate -s 2G 2gbgray.txt
			truncate -s 3G 3gbblack.txt
			find -size +1G | tar -cvf largefiles.tar -T -
			;;
                9)
			echo "Enter the 3 digit permission to find:"
			echo "Select from the following:"
			echo "a.Read only"
			echo "b.Read and Write"
			echo "c.Read, Write and Execute"
			read type
			case $type in
			"a")
				find -perm 444
				;;
			"b")
				find -perm 666
				;;
			"c")
				find -perm 777
				;;
			 esac
			;;
		*)
                        echo "Wrong input..Try again!!!!"
                        ;;
        esac
        echo "Program exited!!"
        echo
        echo
done
