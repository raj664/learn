#!/bin/bash

#This file was created on Thu Jan 24 06:16:59 IST 2019

#demo on cleanup log files

#variables declarations

#var log directory
LOG_DIR=/var/log  

#root user id
ROOT_UID=0

#lines
LINES=15

#not root user
E_NOTROOT=56

#not pwd
E_EXC=57


if [[ "$UID" -eq "$ROOT_UID" ]] #check wether root user
then
	echo "root user and the script excution start now "
else
	echo "only root user can excute this script"
	exit $E_NOTROOT
fi


#check the commmand line argument is not empty

#E_WRONGARU=85

#case $1 in 

#	"" )	lines=50;;
#	*[!1-9]* )
#		echo "usage : `basename $0` lines-to-clenaup"
#		exit $E_WRONGARU;;
#	*  ) lines=$1;
#esac


#check in right directory or not

cd $LOG_DIR

if [ `pwd` = "$LOG_DIR" ] 
then
    echo "your are in $LOG_DIR"

    else
	echo " cant change to $LOG_DIR"
	exit $E_EXC 

fi

#save last section of message to log file

#cat >> message

tail -n $LINES message > msg.temp


#rename it system file
rm msg.tmp message

cat /dev/null > wtmp
echo "All logs cleared"
exit 0


	
