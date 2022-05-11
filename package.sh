#!/bin/bash

#
# Script: distro.sh
# Date: 01-04-2021
#
# Version 0.5 (Test)
#
# Author: Tra Von <travonx3@gmail.com>
#
# Description
# ------------
# This script defines different GNU/Linux APT managers.
#
# Additional Information
# -----------------------
# This script was tested on Debian Buster (Stable),
# with kernel 5.4.0-110--amd64
#
## Colors

RED=$(printf '\e[31m')
WHITE=$(printf '\e[37m')
GREEN=$(printf '\e[32m')
CYANBG=$(printf '\e[46m')
CYAN=$(printf '\e[36m')
BLUEBG=$(printf '\e[44m')
MAGENTABG=$(printf '\e[45m')
ORANGEBG=$(printf '\e[43m')
ORANGE=$(printf '\e[33m')

## Return to regular color 
NC=$(printf '\e[0m')



## Function that print in slow motion
function slow_print() {
    local t=$1
    local check=$(printf '\e')
    local count=0
    while IFS= read -n1 c; do 
        if [[ $c = '-' ]]; then
            echo -n '-'
        else 
            printf "$c"
        fi
        if [[ $count -eq 0 ]]; then 
            if ! [[ $c =~ ${check} ]]; then 
                sleep ${t}
            else 
                ((count++))
            fi 
        elif [[ $count -eq 5 ]]; then 
            count=0
        else 
            ((count++))
        fi
    done <<<"$2"
}

#print banner
printf "${GREEN}"
figlet "PACKAGES"
printf "${NC}"
echo -e "${RED}Author ==>> Travon ${NC}"
#check if neofetch is installed and intsall it if not
read -p "Do you have $GREEN neofetch $NC installed? (y/n): "  ans
if [ $ans == "y" ];
then 
neofetch
else if [ $ans == "n" ];
then 
echo "Installing neofetch..."
sudo apt install neofetch
fi
fi
# start script

printf '\n\n'
slow_print '0.05' "+++++++++++++++++++++++++++++  "
printf '\r'
slow_print '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_print '0.05' "${ORANGE}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_print '0.05' "${GREEN}+++++++++++++++++++++++++++++${NC}  "
printf '\r'
slow_print '0.05' "${RED}+++++++++++++++++++++++++++++${NC}  "
printf '\r'

slow_print '0.06' "Hello so today you will learn what linux packages are.. "
sleep 1
printf '\n\n'
slow_print '0.06' "Linux Package Managers are essentially software applications that help users to do various things! "
sleep 1
printf '\n\n'
slow_print '0.06' "Like Search, Download,Install,Remove, Update and upgrade the system..."
sleep 1
printf '\n\n'
slow_print '0.06' "It can be a CLI tool or in a form of GUI"
printf '\n\n'
slow_print '0.06' "Many linux system comes with their own package managers"
sleep 1
printf '\n\n'
printf "$GREEN"
slow_print '0.06' "just to name a few\n"
echo "[1] UBUNTU ==>> APT"
echo "[2] ARCH-LINUX ==>> PACMAN"
echo "[3] RED-HAT-ENTERPRSE ==>> YUM "
echo "[4] FEDORA ==>> DNF "
echo "[5] DEBIAN ==>> DPKG"
printf "$NC"
printf '\n\n'
sleep 3
slow_print '0.06' "But in this lesson we will focus on apt"
sleep 2
printf '\n\n'
slow_print '0.06' "To update the system use [ sudo apt update ]"
sleep 2
printf '\n\n'
slow_print '0.06' "To upgrade the system use [ sudo apt upgrade ]"
sleep 2
printf '\n\n'
slow_print '0.06' "for full upgrade and  update of  the system use [ sudo apt full-dist update && upgrade ]"
printf '\n\n'
slow_print '0.06' "$ORANGE[NOTICE] You can join two commands together using the && operator..$NC"
sleep 2
printf '\n\n'
slow_print '0.06' "To remove a   package  use [ sudo apt remove <package name> ]"
sleep 2
printf '\n\n'
slow_print '0.06' "To remove unused pacakges in  the system use [ sudo apt autoremove ]"
sleep 2
printf '\n\n'
slow_print '0.06' "To list avaliable upgrades in  the system use [ sudo apt list --upgradeable ]"
sleep 2
printf '\n\n'
slow_print '0.06' "To fix broken pacakges in  the system use [ sudo apt --fix-missing update && update ]"
sleep 2
printf '\n\n'

slow_print '0.06' "for a complete refrence of the apt manager contact the man "
sleep 2
printf '\n\n'
read -p "Do you want to visit the man ? (y/n) " talk
if [ $talk == "y" ]; then 
man apt 
else if [ $talk == "n" ]; then 
echo "Thank you for being here..."
exit
fi
fi 