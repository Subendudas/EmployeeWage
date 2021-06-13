#! /bin/bash
echo "Welcome to Shell Script"
Is_Present=1
EMP_RATE_PER_HR=20
empCheck=$(( RANDOM % 2 ))
if [ $empCheck -eq $Is_Present ]
then
    empHrs=8
    salary=$(( EMP_RATE_PER_HR * empHrs ))
else
    salary=0
fi
 echo "show salary also"
