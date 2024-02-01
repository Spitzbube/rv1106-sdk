#!/bin/sh

ACTION=$1
DEVICE=$2

if [ "$ACTION" == "add" ]; then
	echo "operation: $ACTION" >> /dev/console
	mkdir /media/$DEVICE
	mount /dev/$DEVICE /media/$DEVICE

elif [ "$ACTION" == "remove" ]; then
	umount /media/$DEVICE
	echo "operation: $ACTION" >> /dev/console
else
	echo "Unknown operation: $ACTION" >> /dev/console
fi

