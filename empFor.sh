#! /bin/bash -x
# for ((initialization;condition;updation ie increment/decrement)); do action; done
workingdays=20
totalworkinghours=0
presentfull=1
presenthalf=2
wageperhr=30
for (( i=1; i<=20; i++)) #this is arithmatic expression that is why (())
do
	empcheck=$(( RANDOM%3 ))
	case $empcheck in
	$presentfull) emphrs=8 ;;
	$presenthalf) emphrs=4 ;;
	*) emphrs=0 ;;
esac
totalworkinghours=$(( totalworkinghours + emphrs ))
salary=$(( $emphrs*$wageperhr))
echo $salary
done
totalsalary=$(( totalworkinghours*wageperhr ))
echo totalslary: $totalsalary
