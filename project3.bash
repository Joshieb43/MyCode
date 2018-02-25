#!/bin/bash


#assign the data file to a variable
inputFile="project3.data"

#prompt user for choice
echo -n "Convert from  kelvin to fahrenheit(1) or fahreinheit to kelvin(2)"

#read user input
read choice  

#runs the compiled fahr_kel program with users choice
cmd="./fahr_kel $choice"
exec 1> project3.output
echo "********************************"
echo "CIS-129 Project3 Joshua Budimir"
date
echo "********************************"

#puts output of selected conversion in project3.output file (look there for output)
exec 1> project3.output

#format each line
linePrint="-------------------  ---------------------"

#echo line format
echo $lineprint

#if statement to change output based on conversion choice
if [ $choice = 2 ] 
then

	echo "Fahrenheit Temperature Kelvin Temperature"

fi

#if statement to change output based on conversion choice
if [ $choice = 1 ]
then
	
	echo "Kelvin Temperature Fahrenheit Temperature"
fi


echo $linePrint

#while the data file has numbers each line execute the c program and print output
while read inputVal
do
	$cmd $inputVal
	echo $linePrint
	
done < "$inputFile"
echo $linePrint


