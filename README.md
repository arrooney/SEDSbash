# SEDSbash

These scripts were used on the MIIST SEDS high altitude balloon mission to automate the collection of IMU and imager data. 

The scripts were called from a crontab on the Raspberry Pi and call the IMU python script and photo.c program. If the Raspberry pi restarts 
there are features in place to ensure no data is overwritten.
