#!/bin/bash

shopt -s extglob

echo "Welcome to User Registeration Program"


#Patterns to match
user_name_pattern="^[A-Z].{2,}\s[A-Z].{2,}$"
email_pattern="^[\.\+-_a-zA-Z0-9]+@([a-zA-Z0-9]{1,}\.[a-z]{3}){1}?(\.[a-z]{2,3}){0,1}$"


declare -a names_check=("Aada Foop" "shubham phoujdar")
declare -a emails_check=( "emailabc@yahoo.com" "abc-100@yahoo.com" "abc.100@yahoo.com" "abc111@abc.com" "abc-100@abc.net" "abc.100@abc.com.au" "abc@1.com" "abc@gmail.com.com" "abc+100@gmail.com" "-------------------------------------------------------------------------------" "abc" "abc@.com.my" "abc123@gmail.a" "abc123@.com" "abc123@.com.com" ".abc@abc.com" "abc()*@gmail.com" "abc@%*.com" "abc..2002@gmail.com" "abc.@gmail.com" "abc@abc@gmail.com" "abc@gmail.com.1a" "abc@gmail.com.aa.au" )



echo ----------------------NAME CHECK-------------------------
for name in "${names_check[@]}" ; do
	if [[ $name =~ $user_name_pattern ]] ; then
		echo \[ $name \] accepted
	else 
		echo \[ $name \] rejected
	fi
done
echo ---------------------EMAIL CHECK--------------------------
	for email in "${emails_check[@]}" ; do
	        if [[ $email =~ $email_pattern ]] ; then
	                echo \[ $email \] accepted
	        else echo \[ $email \] rejected
	        fi
	done
#echo --------------------- CHECK--------------------------
#        for email in "${emails_check[@]}" ; do
#                if [[ $email =~ $email_pattern ]] ; then
#                        echo \[ $email \] accepted
#                else echo \[ $email \] rejected
#                fi
#        done





