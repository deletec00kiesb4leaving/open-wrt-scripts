#!/bin/bash

#NEEDS HOMEBREW TO INSTALL SSHPASS: https://brew.sh/
#brew install hudochenkov/sshpass/sshpass #UNCOMMENT to install SSHPASS

if [ ! -e "./status.txt" ]; then
  echo "1" > "./status.txt"
fi

status=$(<status.txt)
password= # Insert Password Here or Password Path $(<./path/file.txt)
username=root # Change Username if Needed
ip= # Insert Router IP Here


if [ "$status" == "1" ]; then
  echo /etc/init.d/led disable; echo /etc/init.d/led stop | sshpass -p "$password" ssh -v -oHostKeyAlgorithms=+ssh-rsa $username@$ip
  echo Sucessfully Turned [OFF] LED on OpenWRT
  echo "0" > "$status"
else
  echo /etc/init.d/led enable; echo /etc/init.d/led start | sshpass -p "$password" ssh -v -oHostKeyAlgorithms=+ssh-rsa $username@$ip
  echo Sucessfully Turned [ON] LED on OpenWRT
  echo "1" > "$status"
fi
