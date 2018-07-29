#!/bin/bash 

#############################################################
# @function						    #
# bash script to wait for DALSA gige camera to connect,     #
# configure some settings, and begin acquisition for the    #
# SEDS balloon mission. 				    #
# 						            #			
# Andrew R. Rooney (2018-08-01)
#  					  		    #
#############################################################


#arv-tool-0.6
check="$(arv-tool-0.6)"

while [ "$check" == "No device found" ]
do
	#arv-tool-0.6
	check=$(arv-tool-0.6)
done


arv-tool-0.6 -n "Teledyne DALSA-S1176000" control AcquisitionFrameRate=1

arv-tool-0.6 -n "Teledyne DALSA-S1176000" control DeviceLinkThroughputLimit=130000000

arv-tool-0.6 -n "Teledyne DALSA-S1176000" control ExposureTime=30000

arv-tool-0.6 -n "Teledyne DALSA-S1176000" control GevSCPSPacketSize=1484

arv-tool-0.6 -n "Teledyne DALSA-S1176000" control DeviceLinkThroughputLimit=5242880

arv-tool-0.6 -n "Teledyne DALSA-S1176000" control Height=320

arv-tool-0.6 -n "Teledyne DALSA-S1176000" control Width=240

sleep .1

sudo ./startIMU.sh &

sleep .2

./startCAM.sh  




