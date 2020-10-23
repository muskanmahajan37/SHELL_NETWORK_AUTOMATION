#!/bin/bash 
battery_level=$(acpi -b |cut -d ", " -f2| sed 's/%//g') 

echo $battery_level	 #$battery_level=13			 

ac_power=$(acpi -b|grep -c "Charging") 
echo $ac_power		 

if [[ $ac_power -eq 1 && $battery_level -eq 100 ]]  
then
export DISPLAY=:0.0 
notify-send "rohan, Battery is full.level: $battery_level% "; 
espeak "Charge full, Please Remove the charger" -s 140 
fi

if [[ $ac_power -eq 0 && $battery_level -lt 30 ]] 
then
export DISPLAY=:0.0 
notify-send "rohan, Battery is Low.Level: $battery_level% "; 
espeak "Please connect the charger" -s 140 

fi
