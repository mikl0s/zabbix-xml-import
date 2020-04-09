#!/bin/bash
head -10 template.xml > import.xml
for i in `cat hosts.csv`
do
	XXIP=`echo $i|awk -F";" '{ print $1 }'`
	XXHOST=`echo $i|awk -F";" '{ print $2 }'`
	XXNAME=`echo $XXHOST|awk -F"." '{ print toupper($1) }'`
	cat host.xml | sed "s/XXIP/$XXIP/g" >> import.xml
	sed -i "s/XXHOST/$XXHOST/g" import.xml
	sed -i "s/XXNAME/$XXNAME/g" import.xml
done
tail -3 template.xml >> import.xml

