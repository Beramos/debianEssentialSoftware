#!/bin/bash
# Ubuntu essential software installer

# vim
sudo apt-get --yes --force-yes install vim

# Git
sudo apt-get --yes --force-yes install git
read -p "add pub key to github, go to: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/ and then press enter"

# Add ssh keys to github account, first generate new ssh key
# ssh-keygen -t rsa -b 4096 -C "bram.de.jaegher@gmail.com"


# google-chrome stable
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update 
sudo apt-get --yes --force-yes install google-chrome-stable

# kile
sudo apt-get --yes --force-yes install kile

# clipx
sudo apt-get --yes --force-yes install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub

# zsh
sudo apt-get --yes --force-yes install zsh

# htop
sudo apt-get --yes --force-yes install htop

# dotphiles bashrc backup
cd
sudo mkdir /.dotfiles
git clone --recursive git@github.com:beramos/dotphiles.git ~/.dotfiles
./.dotfiles/dotsync/bin/dotsync -L
sudo echo 'zsh' >> ~/.bashrc

# F.lux
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui

# inkscape
sudo apt-get --yes --force-yes install inkscape

# gimp
sudo apt-get --yes --force-yes install gimp

# pdftk
sudo apt-get --yes --force-yes install pdftk

# pandoc document converter
sudo apt-get --yes --force-yes install pandoc

# tree 
sudo apt-get --yes --force-yes install tree

# Brackets
sudo add-apt-repository ppa:webupd8team/brackets
sudo apt-get update
sudo apt-get install brackets

# Cifs for mounting windows shares
sudo apt-get install cifs-utils

# zsh
sudo apt-get --yes --force-yes install zsh

# Oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Installing right powerline font and terminal styling: https://gist.github.com/renshuki/3cf3de6e7f00fa7e744a



