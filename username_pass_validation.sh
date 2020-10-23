#!/bin/sh
echo enter user name
read name
if test $name -eq 'rohankumar';then
	echo "#############################"
	echo "it is  a  valid user name"
	echo "#############################"
	echo "enter password"
	read pass
		if test $pass -eq 'Anthem@123';then
			echo "#############################"
			echo "it is  a valid password"
			echo "#############################"
			echo "the user name is :"
			echo "$name"
			echo "#############################"
			echo "the password is :"
			echo "$pass"
			echo "#############################"
			echo "sup man"
			echo "#############################"
		else
			echo "it is not a valid password"	
		fi
else
	echo "it is not a valid user name"
fi	

