#!/bin/bash
while true; do
	export HOME=/root
	adb connect ${PHONE_ADDR}:5555
	sleep 15
done
