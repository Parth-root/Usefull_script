#! /bin/bash
sleep 1
telegram-send "system-start"
er
if [ $(echo $?) -ne 0 ];then
sleep 1
telegram-send "lights out!! now ONLINE"
fi
