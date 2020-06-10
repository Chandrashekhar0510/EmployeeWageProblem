#! /bin/bash

echo "Welcome to Employee Wage Problem"

isPresent=$(( RANDOM%2 ))

WagePerHr=20
DayPerHr=8
salary=0

if [ $isPresent -eq 1 ]
then
	echo "Employee is present"
	salary=$(( $WagePerHr * $DayPerHr ))

	echo "Daily Employee Wage = " $salary
fi


isPart=0
isFull=1
empRate=20
totalSalary=0

case $isPresent in
	$isPart)
		empHrs=8
		echo "Working part time..."
		;;
	$isFull)
		empHrs=4
		echo "Working full time..."
		;;
	*)
		empHrs=0
		echo "Employee is not present"
esac

totalSalary=$(( $empHrs * $empRate + $salary ))

echo "Total Salary = " $totalSalary
