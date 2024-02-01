#!/bin/sh
ACTION=$1

if [ "$ACTION" == "add" ]; then

    source /etc/profile.d/RkEnv.sh
    sleep 1s

    COMPATIBLE=$(cat /proc/device-tree/compatible)
    BOARDNAME=${COMPATIBLE##*,}
	if [[ $BOARDNAME = "rv1106" ]];then		
	    sh /mnt/sdcard/shell/rv1106/test.sh >> /tmp/test.log 2>&1
    else
	    sh /mnt/sdcard/shell/rv1103/test.sh >> /tmp/test.log 2>&1
    fi

elif [ "$ACTION" == "remove" ];then 
	umount /mnt/sdcard

else
	echo "Unknown operation!!!" >> /dev/console
fi
