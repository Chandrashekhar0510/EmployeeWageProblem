#! /bin/bash

echo "Welcome to Employee Wage Problem"

isPresent=$(( RANDOM%2 ))

if [ $isPresent -eq 1 ]
then
	echo "Employee is present"
else
	 echo "Employee is not present"
fi
