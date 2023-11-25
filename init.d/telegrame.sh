#!/bin/bash
sleep 30
telegram-send "system-start"
if [ $(echo $?) != 0 ];then
sleep 180
telegram-send "lights out!! now ONLINE"
fi
while [ True ]
do
if [ $(cat /home/ghost/init.d/chack) == $(curl ifconfig.me) ];then echo "not sending"
sleep 60
else 
curl ifconfig.me > /home/ghost/init.d/chack
telegram-send "ip-change"
telegram-send $(cat /home/ghost/init.d/chack)
echo "send done"
fi
if [ $(cat /home/ghost/init.d/stop_confirm) == "exit" ];then
telegram-send "script stoped"
break
fi
done

