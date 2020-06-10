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
else
	 echo "Employee is not present"
fi

echo "Daily Employee Wage = " $salary
