#!/usr/bin/env bash
echo "###########################"
echo "what is your name?"
read name
echo "hi $name"
echo "###########################"
echo "DO you want to open google"
echo "if yes press 1"
echo "if no press 0"
echo "###########################"
read decession
if [ $decession -eq 1 ];then
	echo "please wait we are prossessing your request"
	start chrome https://www.google.com
	echo "press 1 to start wikipedia"
	read decession_1
	if  [ $decession_1 -eq 1 ];then
    		start chrome https://www.wikipedia.com
	else
		echo "sorry could not open your request"
	fi
else
	echo "sorry could not open your request"
fi

