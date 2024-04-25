#!/bin/bash

sudo apt-get update
sudo apt install samba
whereis samba
mkdir /home/khairul/sambashare/ #mkdir /home/<username>/foldername

#sudo nano /etc/samba/smb.conf
echo "[sambashare]
comment = samba on Ubuntu
path = /home/khairul/sambashare
read only = no
browsable = yes" | sudo tee -a /etc/samba/smb.conf

sudo service smbd restart
sudo ufw allow samba
read -p"Enter your samba server user name:  " uname
sudo smbpasswd -a $uname
ifconfig
