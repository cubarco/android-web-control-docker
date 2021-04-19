#!/bin/sh
timeout 10 sh -c "echo 'setprop ctl.restart adbd' | nc ${PHONE_ADDR} 1234"
