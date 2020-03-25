#!/bin/sh

while :
do
	DATE=$(date)
	/zap2xml.pl -u "$USERNAME" -p "$PASSWORD" -U -o /data/"$XMLTV_FILENAME" "$OPT_ARGS"
	echo "Last run time: $DATE"
	echo "Will run in $SLEEPTIME seconds"
	sleep "$SLEEPTIME"
done
