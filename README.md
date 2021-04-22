# Remote control android phone from web

## USAGE
1. Set up tailscale on your host machine and your phone(optional);

2. Enable adb-over-tcp in your phone;
```shell
adb shell
su
setprop persist.adb.tcp.port 5555
```

3. Run docker service:
```shell
docker run \
    -e PHONE_ADDR=ADDRESS_OF_YOUR_ANDROID_PHONE \
    -p 6080:80 \
    -v /dev/shm:/dev/shm \
    -d --restart=always \
    cublin/android-web-control-docker:latest
```

4. Navigate to `http://localhost:6080` and you'll get what to do.
