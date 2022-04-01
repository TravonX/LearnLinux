#!/bin/bash
## Color
GREEN="$(printf '\033[32m')"
ORANGE="$(printf '\033[33m')"
ORANGEBG="$(printf '\033[43m')"
WHITE="$(printf '\033[37m')"
echo -e "Now that you know most linux pieces\n i think its time to learn what linux distro are"

read -p "Are you read (y/n) " get 

if [ $get = "y" ] 
then 
echo "${GREEN}Lets begin ${WHITE}"
## Explain what linux distto mean
echo "${WHITE}Linux has a number of different versions to suit any type of user"
sleep 8
echo -e "From new users to hard-core users, you’ll \nfind a ${GREEN}“flavor”${WHITE} of Linux to match your needs."
sleep 8
echo "These versions are called distributions (or, in the short form, “distros”)."
sleep 8
echo "Nearly every distribution of Linux can be downloaded for free, burned onto disk"
sleep 8
echo "(or USB thumb drive), and installed (on as many machines as you like)."
sleep 8

echo "Ok now that you know the meaning of Linux Distros "
sleep 6
echo "Let's look at varous types of them"
sleep 6
echo "I wont be able to explain what all the distro here have"
sleep 5
echo "Or why you should use any of them "
sleep 6
echo "You can always search on goggle what varous distor are"
sleep 5
echo "Now some of the  list of linux distor are"
sleep 3
## List some linux distro
echo "[1] LINUX MINT"
sleep 3 
echo "You can always find out more info about Linnux-mint  at [ https://linuxmint.com/ ]"
sleep 3
echo "[2] MANJARO"
echo "You can always find out more info about manjaro at [ https://manjaro.org/ ]"
sleep 3
echo "[3] DEBIAN"
sleep 3 
echo "You can always find out more info about Debian at [https://www.debian.org/ ]"
sleep 3
echo "[4] UBUNTU"
sleep 3 
echo "You can always find out more info about Ubuntu at [ https://ubuntu.com/ ]"
sleep 3
echo "[5] ARCH-LINUX"
sleep 3 
echo "You can always find out more info about Arch at [ https://archlinux.org/ ]"
sleep 3
echo "[6] ANTERGOS"
sleep 3 
echo "You can always find out more info about Antergos at [ https://en.wikipedia.org/wiki/Antergos ]"
sleep 3
echo "[7] SLACKWARE"
sleep 3 
echo "You can always find out more info about Slackware at [ https://www.slackware.com/ ]"
sleep 3
echo "[8] SOLUS"
sleep 3 
echo "You can always find out more info about Solus at [ https://getsol.us/home/ ]"
sleep 3
echo "[9] FEDORA"
sleep 3 
echo "You can always find out more info about Fedora at [ https://getfedora.org/ ] "
sleep 3
echo "[10] ELEMENTARY OS"
sleep 3 
echo "You can always find out more info about Elementry-OS at [ https://elementary.io/ ]"
sleep 3
echo "[11] OPENSUSE"
sleep 3 
echo "You can always find out more info about OpenSuse at"
sleep 3
echo "${GREEN} PLEASE NOTE THIS IS'NT ALL THE LINUX DISTRO"
sleep 5
echo "${GREEN} THERE ARE STILL OTHERS I DID'NT MENTION"
sleep 5
echo "${GREEN} REMEMBER GOOGLE IS YOUR FRIEND"
sleep 3
echo "See you in the next course"
sleep 3
echo "${GREEN}You can always improve this course"
fi 

if [ $get = "n" ] 
then 
sleep 3
echo -e ${ORANGE}"Sure no probs\n See ya next time"
sleep 2
echo "Exiting..."
sleep 2
exit 
fi 