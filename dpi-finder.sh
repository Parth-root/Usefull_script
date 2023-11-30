#!/bin/bash
read -p "enter width resolution -> :" width
read -p "enter your height resolution -> :" height
read -p "your screen size in inch -> :" size1
read -p "your screen height -> :" size2
value1=$((width/size1))
value2=$((height/size2))
add=$((value1+value2))
finalans=$((add/2))
echo $finalans
