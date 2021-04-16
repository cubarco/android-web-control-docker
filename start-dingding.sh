#!/bin/sh
adb shell input keyevent 224  # unlock
sleep 3
adb shell am start -n "com.alibaba.android.rimet/.biz.LaunchHomeActivity"
sleep 10
adb shell am start -a android.intent.action.VIEW -d "dingtalk://dingtalkclient/page/link?url=https://attend.dingtalk.com/attend/index.html"
