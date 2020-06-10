#! /bin/bash

echo "Welcome to Employee Wage Problem"

isPresent=$(( RANDOM%2 ))

WagePerHr=20
DayPerHr=8
wage=0

if [ $isPresent -eq 1 ]
then
	echo "Employee is present"
	wage=$(( $WagePerHr * $DayPerHr ))

	echo "Daily Employee Wage = " $wage
fi


isPart=1
isFull=2
empRate=20
totalDay=20
maxHrs=100

totalSalary=0
totalEmpHrs=0
totalWorkingDays=0

while [[ $totalEmpHrs -lt $maxHrs && $totalWorkingDays -lt $totalDay ]]
do
	((totalWorkingDays++))

	temp=$(( RANDOM%3 ))

	case $temp in
		$isPart)
			empHrs=8
			echo "Working part time"
			;;
		$isFull)
			empHrs=4
			 echo "Working full time"
			;;
		*)
			empHrs=0
			 echo "Employee is not present"
			;;
	esac

	totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done

totalSalary=$(( $totalEmpHrs * $empRate ))
echo "Total Salary = " $totalSalary
