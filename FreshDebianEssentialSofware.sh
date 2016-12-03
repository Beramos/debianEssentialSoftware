#!/bin/bash
# Ubuntu essential software installer

# google-chrome stable
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable

#kile
sudo apt-get --yes --force-yes install kile

# Git
sudo apt-get --yes --force-yes install git

# flash player for google chrome
# still need to find a good one ;(

# clipx
sudo apt-get --yes --force-yes install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub

# generate pub key
ssh-keygen -t rsa -b 4096 -C "bram.de.jaegher@gmail.com"
ssh-add ~/.ssh/id_rsa

# vim
sudo apt-get --yes --force-yes install vim

read -p "add pub key to github, go to: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/ and then press enter"

#zsh
sudo apt-get --yes --force-yes install zsh

#htop
sudo apt-get --yes --force-yes install htop

#dotphiles bashrc backup
cd
sudo mkdir /.dotfiles
git clone --recursive git@github.com:beramos/dotphiles.git ~/.dotfiles
./.dotfiles/dotsync/bin/dotsync -L
sudo echo 'zsh' >> ~/.bashrc

# f.lux
sudo apt-get --yes --force-yes install git python-appindicator python-xdg python-pexpect python-gconf python-gtk2 python-glade2 libxxf86vm1
cd /tmp
git clone "https://github.com/xflux-gui/xflux-gui.git"
cd xflux-gui
python download-xflux.py
sudo python setup.py install
cd

# openFOAM4.1
sudo add-apt-repository http://dl.openfoam.org/ubuntu
sudo sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -"
sudo apt-get update
sudo apt-get -y install openfoam4

#Inkscape
sudo apt-get --yes --force-yes install Inkscape

#pdftk
sudo apt-get --yes --force-yes install pdftk

#Citrix receiver for Athena
sudo apt-get --yes --force-yes install icaclient

#pandoc document converter
sudo apt-get --yes --force-yes install pandoc


