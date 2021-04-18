#!/bin/bash
while true; do
	export HOME=/root
	if ! adb devices | grep -q ${PHONE_ADDR}:5555; then
		adb connect ${PHONE_ADDR}:5555
	fi
	sleep 5
done
