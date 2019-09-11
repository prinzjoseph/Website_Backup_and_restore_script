#!/bin/bash

TIME=`date +%b-%d-%y`                     # This Command will read the date.
DESDIR=<backup-directory>                 # Destination of backup file.
FILENAME=<your-website>-$TIME.tar.gz      # The filename including the date.
SRCDIR=<Documentroot>                     # Source backup folder

#Backup_Database

mysqldump -u (username) -p(password) (dbname) > $DESDIR/(dbname)-$TIME.sql

#Backup_DocumentRoot

cd $SRCDIR && tar -cpzf $DESDIR/$FILENAME .
