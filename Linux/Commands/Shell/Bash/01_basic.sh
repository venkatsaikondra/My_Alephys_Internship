#!/bin/bash

echo "Hey Venkat"
# This is a sigle line comment

<<comment
This
is
a 
multiline comments
comment
#Script to show how to use variables
 
a=10
name="venkat"
age=19

echo "$a"
echo "$name"
echo "$age"
echo "My name is $name"

name="Sai"
echo "My name is $name"

#Variable to store the output of a command
HOSTNAME=$(hostname)

echo "Name of this machine is $HOSTNAME"

#How to define an array
myArray = ( 1 2 Hello "Hey venkat")

#How to get values from an array
echo "${myarray[0]}"
echo "${myarray[1]}"

#If we want all values
echo "${myarray[*]}"

#How to get length of the array
echo "${#myarray[*]}"

#How to get specific Values
echo "${myarray[*]:1:2}"

#Arrays Key value Pairs
declare -A myArray
myArray = ([Name]=paul [age]=40)
echo "${myArray[Name]}"

#String operations
myVar="Venkat Sai Kondra"
length=${#myVar}
echo "Length of myVar $length"
echo "Uper case is ---------${myVar^^}"
echo "Lower case is --------${myVar,,}"

# Replace -> ${myvar,sai,varma}

#Interaction with user
read name
echo "My name is $name"
read -p "What is your name" name

#Arthimatic Operations
x=10
y=20
let mul = $x*$y
echo "$mul"

#Conditional Satements
if [$marks -gt 40]
then
    echo "Yes your pass"
elif [$marks -ge 60]
then
     echo "Your marks is 60"
else
    echo "You are fail!!!!!!!!!!"
fi

#Cases
echo "Hey choose an option"
echo "a= To see the current date"
echo "b = List all the files in the current dir"
read choice

case $choice in
   a)date;;
   b)ls;;
   *)"not a valid input"
esac

