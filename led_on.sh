#!/bin/bash

#NEEDS HOMEBREW TO INSTALL SSHPASS: https://brew.sh/

brew install hudochenkov/sshpass/sshpass

password= #Insert Password Here or Password Path $(<./path/file.txt)
ip=  #Insert Router IP Here
username=root  # Change Username if Needed

echo /etc/init.d/led enable; echo /etc/init.d/led start | sshpass -p "$password" ssh -v -oHostKeyAlgorithms=+ssh-rsa $username@$ip

clear

echo Sucessfully Turned On LED on OpenWRT