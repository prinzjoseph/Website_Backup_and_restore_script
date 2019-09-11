#!/bin/bash

TIME=`date +%b-%d-%y`                          # This Command will read the date.
FILENAME=<your-site>-$TIME.tar.gz              # The filename including the date.
DESDIR=<documentroot>                          # Documentroot location.
SRCDIR=<backup-directory>                      # backup file location.
rm -rf $DESDIR
mkdir $DESDIR

#Restore_Documentroot

tar -C $DESDIR -xpzf $SRCDIR/$FILENAME

#Restore_Database
`
mysql -u (username) -p(password) (dbname) < $SRCDIR/(dbname)-$TIME.sql
