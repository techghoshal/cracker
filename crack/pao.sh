#!/bin/bash
#PAO = Password Attacks Offline
clear
echo
echo "> Which tool will you use to crack the password? " | lolcat -f | boxes -d peek -a c
echo 
#Use password crack tool
select pass_crack in "Zydra" "John"; do

case $pass_crack in
#use Zydra for password cracking
"Zydra")
cd Zydra
echo 
figlet "Zydra" | lolcat -f | boxes -d ada-box
if [ -x script.sh ]
then
 echo
else
  echo "This tool dosen't support Office File!" | lolcat -f
  chmod +x script.sh
fi
echo 
read -p "> Enter File: " z_file
read -p "> Enter Wordlist: " z_wordlist
echo 
python3 Zydra.py -f $z_file -d $z_wordlist
sleep 1
exit
;;

#use john for password cracking
"John") 
cd john
./john.sh
exit
esac
done
