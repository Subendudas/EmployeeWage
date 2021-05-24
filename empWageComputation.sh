#! /bin/bash
echo "Welcome to Shell Script"
 isEmployeePresent=$(( RANDOM%2 ))
if [ $isEmployeePresent -eq 1 ]
then 
echo "Employee is Present"
else
echo "Employee is Absent"
fi
