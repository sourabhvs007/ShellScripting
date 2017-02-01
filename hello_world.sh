#!/bin/bash

#Variable declaration in shell script and printing 
clear;
STRING="Hello World"
echo $STRING

#Printing Date in DD/MM/YYYY format 
DATE=$(date +%d'/'%m'/'%y)
echo $DATE

#Global Variable and local variable use in a function 
num1="5"

num_function_1()
{
 	num2="3"
 	echo "result1=$(($num1 + $num2))"
}
num_function_1   # can pass parameters  Ex: num_function_1 2 

#Passing arguments  

echo $1 $2 # will take two parameters while shell scipt execution Ex: ./hello_world.sh Bash Scripting 

# storing the arguments in an array ( NOTE : These parameters are passed during shell scripting execution )
a=("$@")  # array called "a" which can take n number of elements  

echo ${a[0]} ${a[1]}  # will print the two parameters 

echo $@ #print all the paraters passed 

echo $#  # to print the number of parametes passed 


#for Loop for array of elements 

array=('Hi' 'Bash' 'scripting' )
elements=${#array[@]}

for (( i=0;i<=$elements ;i++ )); do 
	echo ${array[${i}]}
done

array1=('hello' 'world')
num=${#array1[@]}

for ((i=0;i<=$num;i++));do
	echo ${array1[${i}]}
done 




























