#!/bin/bash
ENABLED=$(xinput list-props 12 | awk '/Device Enabled/ {print$4}')
if [ "$ENABLED" == "1" ] ; then
	xinput disable 12 ;
else
	xinput enable 12 ;
fi
