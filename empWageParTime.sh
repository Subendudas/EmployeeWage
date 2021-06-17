#! /bin/bash -x
Is_Present_Full_Time=1
Is_Present_Part_Time=2
EMP_RATE_PER_HR=20 
empCheck=$(( RANDOM % 3 ))
if [ $empCheck -eq $Is_Present_Full_Time ]
then
    empHrs=8
elif [ $empCheck -eq $Is_Present_Part_Time ]
then
      empHrs=4
else
      empHrs=0
fi
    salary=$(( EMP_RATE_PER_HR * empHrs ))
