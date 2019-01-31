#!/bin/bash

#This file was created on Mon Jan 21 15:57:58 IST 2019

#This is to demonstrate the backup script of images

SRC_DIR='~/Pictures'
BACKUP_DIR='~/training/newshell/images_backup'

mkdir -p $BACKUP_DIR

for i in $(cat kube8);
do 
	if [ -f $i ];
	then
		echo "copying the $i to logs_backup directory"
		cp $SRC_DIR/$i $BACKUP_DIR
	else
		echo "$i files doesnt exit, skipping"
	fi
done
echo
echo "zipping the pem files"
tar -zfcv images_backup.tg images_backup
echo
echo
echo "backup complted sucessfully"

