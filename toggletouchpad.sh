#!/bin/bash
DEVICE=$(xinput | grep 'TouchPad' | awk '{print$6}')
ID=${DEVICE:3}
ENABLED=$(xinput list-props $ID | awk '/Device Enabled/ {print$4}')
if [ "$ENABLED" == "1" ] ; then
	xinput disable $ID ;
else
	xinput enable $ID ;
fi
