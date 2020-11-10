#!/bin/bash -x

echo "Welcome to User Registeration Program"


#Patterns to match
user_name_pattern="^[A-Z].{2,}\s[A-Z].{2,}$"



string_accepted_flag=0
while [ $string_accepted_flag -eq 0 ] ; do
	read -p "Enter First and Last Name separated by a space- (Both start with a cap and minimum 3 characters ) : " name
	if [[ $name =~ $user_name_pattern ]] ; then
		string_accepted_flag=1
		echo \[ $name \] is accepted as User Name
	else echo The User Name is Invalid , Please Enter a Valid User Name
	fi
done
