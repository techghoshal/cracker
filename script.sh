#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update -y
# sudo apt-get upgrade -y
# Workaround for the grub-config-prompt issue :
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
# As taken from here :
# https://askubuntu.com/questions/146921/how-do-i-apt-get-y-dist-upgrade-without-a-grub-config-prompt

sudo apt-get install qpdf -y
sudo apt-get install unrar -y
sudo apt-get install python3.7 -y 
sudo apt-get install python3-pip -y
pip3 --version

pip3 install zipfile
pip3 install rarfile
pip3 install pyfiglet
pip3 install py-term
pip3 install termcolor
pip3 install rarfile pyfiglet py-term

apt-get install crunch
apt-get install boxes
apt-get install lolcat
apt-get install figlet
apt-get install john

git clone https://github.com/Mebus/cupp.git
cd crack
git clone https://github.com/hamedA2/Zydra.git
cd ..
chmod +x cracker
chmod +x crunch/crunch.sh
chmod +x cupp/cupp.py
chmod +x crack/pao.sh
chmod +x crack/john/john.sh
chmod +x crack/Zydra/Zydra.py
