#!/bin/bash 
#############################
# To run at startup to begin 
# photo collection for SEDS
# balloon mission
#
# Andrew R. Rooney (2018-08-01)
#
#############################
cd ~ 
cd /home/pi/arv/aravis/src

nameNum=1

while :
do 
	nameCheck="$nameNum"
	
	if [[ -f $nameCheck ]]
	then
		nameNum=$((nameNum+1))
	else
		./photo $nameNum
	fi
done
	

