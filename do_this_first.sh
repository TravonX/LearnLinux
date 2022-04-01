#!/bin/bash

read -p "Do you have python & figlet installed  (y/n) : " ans

if [ $ans = "y" ]
then
echo "OK run the ./index.sh and happy learning "
sleep 1 
exit
fi

if [ $ans = "n" ]
then
echo "OK we are going to install figlet now"
sleep 2
   sudo apt install figlet
sleep 2
echo "Now we are good to go"
fi
