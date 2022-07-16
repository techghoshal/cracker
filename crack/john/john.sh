#!/bin/bash  
clear
echo
figlet "John" | lolcat -f | boxes -d ada-cmt -a c
echo
echo "> Choose File Format: " | lolcat -f | boxes -d boxquote -a c
select use_john in "RAR" "ZIP" "PDF" "OFFICE"; do

case $use_john in
"RAR") 
echo
echo "Choose RAR!" | lolcat -f
read -p "> Enter File : " file_path
#convert hash 
rar2john $file_path > hash.txt
#crack password
read -p "> Enter Wordlist: " wordlist
echo
john --wordlist=$wordlist hash.txt
echo 
echo "Wait..." | lolcat -f
echo
sleep 2
john --show hash.txt 
sleep 1
exit
;;
"ZIP") 
echo
echo "Choose ZIP!" | lolcat -f
read -p "> Enter File : " file_path
#convert hash 
zip2john $file_path > hash.txt
#crack password
read -p "> Enter Wordlist: " wordlist
sleep 1
echo
john --wordlist=$wordlist hash.txt
echo 
echo "Wait..." | lolcat -f
echo
sleep 2
john --show hash.txt 
sleep 1
exit
;;
"PDF")
echo
echo "Choose PDF!" | lolcat -f
read -p "> Enter File : " file_path
#convert hash 
pdf2john $file_path > hash.txt
#crack password
read -p "> Enter Wordlist: " wordlist
echo
john --wordlist=$wordlist hash.txt
echo 
echo "Wait..." | lolcat -f
echo
sleep 2
john --show hash.txt 
sleep 1
exit
;;
"OFFICE") 
echo
echo "Choose OFFICE!" | lolcat -f
read -p "> Enter File : " file_path
#convert hash 
office2john $file_path > hash.txt
#crack password
read -p "> Enter Wordlist: " wordlist
echo
john --wordlist=$wordlist hash.txt
echo 
echo "Wait..." | lolcat -f
echo
sleep 2
john --show hash.txt 
sleep 1
exit
;;
esac
done