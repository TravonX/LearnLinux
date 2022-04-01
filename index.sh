#!/bin/bash

## colors
RED="$(printf '\033[31m')"
WHITE="$(printf '\033[37m')"
GREEN="$(printf '\033[32m')"
CYANBG="$(printf '\033[46m')" 
CYAN="$(printf '\033[36m')"
BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"
ORANGEBG="$(printf '\033[43m')"
ORANGE="$(printf '\033[33m')"
echo "Make sure to run do_this_first.sh  before running this one"
##check if user run the first script

read -p "Did you run the first script (y/n) : "  ans_1
if [ $ans_1 = "y" ]
then
##display a nice greeting
 echo "${GREEN}Nice one${WHITE}"
 sleep 2
## print banner
figlet "LEARN LINUX"
                    echo "${RED} created by Travon ${WHITE}"
## ask for name to display
read -p "Enter your name : " name
sleep 2
echo "Welcome ${GREEN}$name${WHITE} "
 sleep 1
echo "I've  been waiting for you ${GREEN}$name${WHITE}"
sleep 2
echo "Now let start "
sleep 5
## Explain what linux is and some of it various uses and platform
echo  "What is LINUX ?"
sleep 5

echo  -e "Well just like windows and Mac Os, and IOS \nLinux is  an operating system"

sleep 10
echo -e "In fact, one of the most popular platforms on the planet \nYour Andriod phone is powered by LINUX "
sleep 3

echo " Now let break everything down"
sleep 4
echo  -e " An operating system is software that manages all of the hardware resources \nwhich is associated with your desktop or laptop"
sleep 6
echo "Hope you got that, lets continue"

sleep 7
echo -e "To put things simple\nAn operating system manages the communication between your software and your hardware"
sleep 7
echo  "Without the operating system (OS), the software wouldn’t function."
sleep 3

echo "NOW WE WILL LEARN SOME LINUX SYSTEM DIFFERENT PEICES"
sleep 2

## Display what user had to learn today
## Creat a variable that holds various meaning of linux system differnt peieces
BOOT=" The software that manages the boot process of your computer.\nFor most users, this will simply be a splash screen that pops and \nand eventually goes away to boot into the operating system."
KERNAL=" This is the one piece of the whole that is actually called ‘Linux’.\n The kernel is the core of the system and manages the CPU, memory\n and peripheral devices. The kernel is the lowest level of the OS."
InSYS=" This is a sub-system that bootstraps the user space and is charged\nwith controlling daemons. One of the most widely used init systems is systemd, \nwhich also happens to be one of the most controversial\n. It is the init system that manages the boot process, \n once the initial booting is handed over from the bootloader (i.e., GRUB or GRand Unified Bootloader)."
DAEMONS="These are background services (printing, sound, scheduling, etc.)\n that either start up during boot or after you log into the desktop."
GRSERVER=" This is the sub-system that displays the graphics on your monitor. \n It is commonly referred to as the X server or just X."
DESKENV=" This is the piece that the users actually interact with. \nThere are many desktop environments to choose from\nGNOME, Cinnamon, Mate, Pantheon, Enlightenment, KDE, Xfce, etc.).\n Each desktop environment includes built-in applications\n (such as file managers, configuration tools, web browsers, and games)"
APP=" Desktop environments do not offer the full array of apps.\n Just like Windows and macOS, Linux offers thousands upon thousands of high-quality \nsoftware titles that can be easily found and installed.\nMost modern Linux distributions include App Store-like tool \nthat centralize and simplify application installation.\nFor example, Ubuntu Linux has the Ubuntu Software Center (a rebrand of GNOME Software) \n which allows you to quickly search among the thousands of apps \nand install them from one centralized location."
echo -e "      [1] Bootloader \n      [2] Kernel \n      [3] Init system \n      [4] Daemons \n      [5] Graphical server\n      [6] Desktop environment(DE)\n      [7]Application "

read -p  " CHOOSE WHAT YOU WANT TO LEARN : " choose
fi


## Display the meaning of the LINUX SYSTEM DIFFERENT PEICES depedning on user choice
case $choose in 
1)
echo "Let let the ${CYAN}[ BOOTLOADER ]"
sleep 2
echo -e $BOOT
;;
2)
echo "Let also learn about the ${GREEN}[ KERNAL ]"
sleep 2
echo -e $KERNAL
;;
3)
echo "What's the ${CYANBG}[ INIT-SYSTEM ]${WHITE}"
echo -e $InSYS
;;
4)
echo "Its a demon !=YES its ${RED}[ DAEMONS ]"
echo -e $DAEMONS
;;
5)
echo "Hey we gone look what ${ORANGE}[ GRAPHICAL SERVER ]${WHITE}"
echo -e $GRSERVER
;;
6)
echo "Don't forget the [ DESKTOP ENVIRONMENT (DE) ] "
echo -e $DESKENV
;;
7)
echo "What's a system without ${BLUEBG}[ APPS ] ??${WHITE}"
echo -e $APP
esac

# Terminate(exit) if user doest run the first script
if [ $ans_1 = "n" ]
then
echo "${RED}Make sure to run the first script $name${WHITE}"
fi