#! /bin/bash -x
part_time=1
full_time=2
hrs_in_mnt=80
emprate=20
workingdays=20
totalemphrs=0
totalworkingdays=0
while [ $totalemphrs -lt $hrs_in_mnt ] && 
[ $totalworkingdays -lt $workingdays ]
	do
	(( totalworkingdays++ ))
	empcheck=$(( RANDOM%3 ))
case $empcheck in
$full_time) emphrs=8 ;;
$part_time) emphrs=4 ;;
*) emphrs=0 ;;
esac
totalemphrs=$(( $totalemphrs + $emphrs ))
done
totalSalary=$(( $totalemphrs + $emprate ))
