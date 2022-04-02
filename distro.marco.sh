#!/bin/bash
#
# Script: distro.sh
# Date: 01-04-2021
#
# Version 0.5 (Test)
#
# Author: Tra Von <email_address>
#
# Description
# ------------
# This script defines different GNU/Linux distros.
#
# Additional Information
# -----------------------
# This script was tested on Debian Buster (Stable),
# with kernel 4.19.0-19-amd64
#
#################################################################################
#
# ChangeLog History
# =================
#
# Name			Date		Change
# -----			-----		-------
# Marco van Wijnen	02-04-2022	Added Global Variables, Added the While loop
#					to prompt to continue the course, removed
#					any first and second person form, Increased
#					version number and promoted script from Draft
#					to Test.
# Marco van Wijnen	01-04-2022	Initial cleaning of the code. Added template
#					and version.
#
#################################################################################
#                          Global Settings					#
#################################################################################
# Define Global Variables/Settings
#
PROGNAME=$(basename ${0})
PROGPATH=$(dirname ${0})
RETVAL=$?
#GREEN="\033[92;1m"
#WARN="\033[93;1m"
#RED="\033[91;1m"
#NORMAL="\033[0m"
GREEN="\033[32;1m"
ORANGE="\033[33;1m"
ORANGEBG="\033[43;1m"
WHITE="\033[37;1m')"
NORMAL="\033[0m"
DATE="$(date +"%b.%d %Y, %H:%M:%S")"
#
# End Global Variables/Settings
#################################################################################
#                              Main                                             #
#################################################################################
#
## Script Start,
if [[ ${RETVAL} == 0 ]]
then
  echo ""
  echo "Learn about GNU/Linux distributions."
  echo ""
else
  echo ""
  echo "Bug detected as there isn't a return value of 0...please investigate"
  echo ""
  exit 1
fi
#
sleep 2
#
## Prompt to wish to continue,
while true
do
        read -p "Are you ready and wish to continue? (y/n)" yn
          case $yn in
               [yY][eE][sS]|[yY])
            if [[ "${ny}" == "${ny#[yY]}" ]]; then
              echo -e "${GREEN}Let's begin...${NORMAL}"
            fi
                break
                ;;
               [nN][oO]|[nN])
            echo "Error, Process Cancelled!"
                exit
                ;;
            * )
          echo "Please answer yes or no"
          ;;
          esac
done
#
## Explain what a linux distro is,
echo "There are a number of different GNU/Linux distributions to suit any type of user."
sleep 8
echo -e "From new users to hardcore users, there is a ${GREEN}“flavor”${NORMAL} of GNU/Linux to match somebody's needs."
sleep 8
echo "Community based projects and some companies responsible for the maintanance of softare packages are called "distributions" or distros (distro for short)."
sleep 8
echo "Every GNU/Linux distribution is free for use and the ISO files can be downloaded from the Internet to be burned onto disk or USB thumb drive."
sleep 8
echo "It's possibe to have them installed on as many machines as possible, they have a GPL license (General Public License)."
sleep 8
echo "Now that the meaning is of GNU/Linux distros is clear, let's look at various types of GNU/Linux distros."
sleep 6
echo "It won't be possible to explain what all the distros cater for, or why should they be the preferred installation."
sleep 6
echo "Search in google for more information."
sleep 5
echo -e "${GREEN}Some GNU/Linux distrubutions listed includes;${NORMAL}"
sleep 3
## List of some linux distros,
echo "[1] LINUX MINT"
sleep 3 
echo "Find out more info about Mint at [ https://linuxmint.com/ ]"
sleep 3
echo "[2] MANJARO"
echo "Find out more info about Manjaro at [ https://manjaro.org/ ]"
sleep 3
echo "[3] DEBIAN"
sleep 3 
echo "Find out more info about Debian at [https://www.debian.org/ ]"
sleep 3
echo "[4] UBUNTU"
sleep 3 
echo "Find out more info about Ubuntu at [ https://ubuntu.com/ ]"
sleep 3
echo "[5] ARCH-LINUX"
sleep 3 
echo "Find out more info about Arch at [ https://archlinux.org/ ]"
sleep 3
echo "[6] ANTERGOS"
sleep 3 
echo "Find out more info about Antergos at [ https://en.wikipedia.org/wiki/Antergos ]"
sleep 3
echo "[7] SLACKWARE"
sleep 3 
echo "Find out more info about Slackware at [ https://www.slackware.com/ ]"
sleep 3
echo "[8] SOLUS"
sleep 3 
echo "Find out more info about Solus at [ https://getsol.us/home/ ]"
sleep 3
echo "[9] FEDORA"
sleep 3 
echo "Find out more info about Fedora at [ https://getfedora.org/ ] "
sleep 3
echo "[10] ELEMENTARY OS"
sleep 3 
echo "Find out more info about Elementry-OS at [ https://elementary.io/ ]"
sleep 3
echo "[11] OPENSUSE"
sleep 3 
echo "Find out more info about OpenSuse at"
sleep 3
echo -e "${GREEN}PLEASE NOTE THIS ISN'T ALL THE GNU/LINUX DISTRIBUTIONS${NORMAL}"
sleep 5
echo -e "${GREEN}THERE ARE STILL OTHER DISTROS THAT HAVEN'T BEEN MENTIONED${NORMAL}"
sleep 5
echo -e "${GREEN}REMEMBER GOOGLE IS YOUR FRIEND${NORMAL}"
sleep 3
echo -e "${ORANGE}Until the next course.${NORMAL}"
sleep 3
echo -e "${GREEN}Any improvement of this course is always encouraged.${NORMAL}"
#
# End!
