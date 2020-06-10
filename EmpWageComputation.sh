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


isPart=0
isFull=1
empRate=20
totalSalary=0
totalDay=20

for (( day=1; day<=$totalDay; day++ ))
do
	temp=$(( RANDOM%2 ))

	case $isPresent in
		$isPart)
			empHrs=8
			;;
		$isFull)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac

	salary=$(( $empHrs * $empRate ))
	totalSalary=$(( $totalsalary + $salary + $wage ))
done

echo "Total Salary = " $totalSalary
