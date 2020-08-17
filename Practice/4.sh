/*
Shell script with three array structures to hold the values as given below:
Arrray_empl = (Naman   Karthik   Vishal………)
Array_basic = ( 9000   15000   18000………)
Array_gross = (0 0 0……..)

Update the corresponding (based on the array index) gross salary of the employees in the Array_gross according to rule given below:
a.     If basic salary is < Rs15000 then Gross Salary = basic Salary + 90% of basic salary.
b.     If basic salary is >=Rs15000 then Gross Salary = basic Salary + 98% of basic salary.
*/

echo "Enter the number of the employees:"
read num
declare -a arr_Emp
declare -a arr_Basic
declare -a arr_Gross
for ((i=0;i<num;i++))
do
    echo "Enter the name of the employee[$i]:"
    read arr_Emp[$i]
    echo "Enter the basic salary of the employee[$i]:"
    read arr_Basic[$i]
    arrGross[i]=0.0
done
echo ""
echo "Intial detail of the employees:"
echo "Employee Name:${arr_Emp[*]}"
echo "Basic Salary of employee:${arr_Basic[*]}"
echo "Gross Salary of employee:${arr_Gross[*]}"
for ((i=0;i<num;i++))
do
   if [ ${arr_Basic[i]} -lt 15000 ]
   then
       incr=`echo "${arr_Basic[i]} * 0.90" | bc `
       arr_Gross[i]=`echo "${arr_Basic[i]} + $incr" | bc `
   else
       incr=`echo "${arr_Basic[i]} * 0.98" | bc `
       arr_Gross[i]=`echo "${arr_Basic[i]} + $incr" | bc `
   fi
done
echo ""
echo "After the calculation of Gross Salary ---"
echo "Employee Name:${arr_Emp[*]}"
echo "Basic Salary of employee:${arr_Basic[*]}"
echo "Gross Salary of employee:${arr_Gross[*]}"
