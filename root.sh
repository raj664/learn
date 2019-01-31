#!/bin/bash

#This file was created on Tue Jan 22 06:22:02 IST 2019

#Demomstration on backup of a logfile

#user should be a root user

#assingin the variables

SCR_DIR=/var/log
ROOT_UID=0
LINES=15
E_XCD=66
E_NOTROOT=67

if [ "UID" -ne "ROOT_UID" ]

then
	echo "you must be a root user to run this script"
	exit $E_NOTROOT
	fi

	#Double check  if in right directory

	cd $SCR_DIR 

	if [ `pwd'  != "$SCR_DIR" ]
	then 
		echo "cannot change to $SCR_DIR"
		exit $E_XCD
	fi

	if 

		tail -$LINES message > msg.tmpi file.
		mv msg.tmp message
		cat /dev/null > 



