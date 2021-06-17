#! /bin/bash -x
# for ((initialization;condition;updation ie increment/decrement)); do action; done
totalworkinghours=0
presentfull=1
presenthalf=2
wageperhr=30
function getworkhours(){
	local empcheck=$1
	local emphrs=0
	 case $empcheck in
        $presentfull) emphrs=8 ;;
        $presenthalf) emphrs=4 ;;
        *) emphrs=0 ;;
	esac
	echo $emphrs
}

for (( i=1; i<=20; i++)) #this is arithmatic expression that is why (())
do
	empcheck=$(( RANDOM%3 ))
	emphrs="$( getworkhours $empcheck )"
		totalworkinghours=$(( totalworkinghours + emphrs ))
		salary=$(( emphrs * wageperhr))
	dailywage[$i]=$salary
done

	echo ${dailywage[@]}
	echo index:${!dailywage[*]}
	echo values:${dailywage[*]}
	totalsalary=$(( totalworkinghours*wageperhr ))
	calsalary=0
for i in ${!dailywage[*]}
do
	calsalary=$(( calsalary + ${dailywage[$i]} ))
done
	echo calsalary:$calsalary
	echo totalslary: $totalsalary
