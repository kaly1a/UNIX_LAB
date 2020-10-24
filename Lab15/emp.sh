/*
Q - Write a shell program to calculate the net salary of an employee in a particular month. 
Note- Store 3 levels of Designations and corresponding Basic Pay, TA, DA, and HRA in a file. Input the designation and calculate the net salary according to the designation. Use all the scripting concepts which you have learned.   

-------------------------------------------------------------------------------- 

SHELL APPLICATION 1 
Develop a Shell Programming Applications to create N number of Employee records having the following fields :                 
Field Name        Data Type         
---------------        -------------     
Name            String     
EmpID        Integer 
Dept            String        
Design        String        
BasicPay        Floating Point Number    

Get any one Employee id as an input from the created list. For that employee, calculate the following salary allowances and display all his details.
     DA    =    45 % of BasicPay     
HRA    =    12 % of Basic Pay 
CCA    =    Rs 400 /-     
GP    =    (Basic Pay + DA + HRA + CCA)     
AP    =    (GP * 12 )     
PF     =    25 % of Basic Pay     
NP    =     GP – ( PF + IT )     
Calculation of IT(Income Tax):     
-------------------------------------- 
i.    IT = 0.0        if AP < 60000
ii.    IT = 0.1 * GP    if AP > 60000 and < = 120000 
iii.    IT = 0.2 * GP    if AP > 120000 and < = 180000 
iv.    IT = 0.25 * GP    if AP > 180000
*/

echo "Name: Kalyani Nayak"
echo "Reg No: 1947228"
echo " -----Calculation of net salary of employee------ "
echo
echo "Enter the number of employee details you wish to add"
read limit

for (( i=0 ; i< $limit ; i++ ))
do
        echo "Enter the details of employee $((i+1)) "
        id=$((i+1))
        echo "Enter the name"
        read name
        echo "Enter the department"
        read dept
        echo "Enter the designation"
        read desig
        echo "Enter the basicpay"
        read basic_pay
        echo
        echo

        echo $id $name $dept $desig $basic_pay >>emp.txt
done


echo "Would you like to display the details of user?"
echo "Enter the Id"
read id
awk -v input=$id '{
if($1 == input)
{
        print "Details of employee ID ",input
        print "Name\t  :",$2
        print "Department  :",$3
        print "Designation :" ,$4

        printf "Basic pay\t : %.2f\n",$5
        DA=$5 * 0.45
        printf "DA\t\t :%.2f\n",DA
        HRA=$5 * 0.12
        printf "HRA\t\t :%.2f\n",HRA
        CCA=400
        printf "CCA\t\t: %.2f\n",CCA
        GP=$5+DA+HRA+CCA
    printf "GP \t\t: %.2f\n",GP
        AP=GP*12
        printf "AP\t\t :%.2f\n",AP
        PF=$5*0.25
        printf "PF\t\t :%.2f\n",PF
        if (AP <= 60000)
                IT=0.0;
        else if(AP <= 120000 )
                IT=0.1*GP;
        else if(AP <= 180000 )
                IT=0.2*GP;
        else
                IT=0.25*GP;
        NP=GP -PF - IT
        printf "NP\t\t :%.2f\n",NP
        Total=$5+DA+HRA+CCA+GP+AP+PF+NP
        printf "Total Salary \t: %.2f\n",Total
        exit 1
}
}' emp.txt
