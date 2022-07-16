#!/bin/bash
clear
figlet "Crunch" | lolcat -f | boxes -d ada-cmt -a c
crunch
echo
echo "Option: help,clear" | lolcat -f
echo
read -p "Use Crunch: " crun

if [ "$crun" == "help" ] 
then
cd crunch
cat help.txt
echo
read -p "Use Crunch: " crun
fi

if [ "$crun" == "clear" ]
then
clear
read -p "Use Crunch: " crun
fi
a=`$crun`
echo
echo "Save password list:" 
echo `pwd` | lolcat -f
sleep 2
