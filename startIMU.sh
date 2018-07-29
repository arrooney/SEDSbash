#!/bin/bash 

####################################
# To be run at start up to begin IMU
# data collection for the SEDS balloon 
# mission.
#
# Andrew R. Rooney (2018-08-01)
#
####################################
cd ~
cd /home/pi/Adafruit_Python_BNO055

while :
do 
	sudo python IMU.py
done
