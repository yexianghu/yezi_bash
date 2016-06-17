#!/bin/bash 

#insall gnome optional
#sudo apt-get install gnome

#PPA for synapse
sudo apt-add-repository -y ppa:synapse-core/ppa 

#PPA for android studio
sudo apt-add-repository -y ppa:paolorotolo/android-studio

#PPA for oracle java
sudo add-apt-repository -y ppa:webupd8team/java 

#PPA for chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

#PPA for intelliJ
sudo add-apt-repository ppa:mystic-mirage/pycharm
sudo apt-add-repository ppa:mmk2410/intellij-idea-community

sudo apt-get update


#install chrome
sudo apt-get install -y google-chrome-stable

#install common tools
sudo apt-get install -y vim guake emacs24 synapse gconf-editor git subversion gcolor2 kolourpaint4 virtualbox global wireshark samba curl ssh exfat-fuse exfat-utils

#for java tool charm
sudo apt-get install -y oracle-java7-installer ant gradle

#for android-studio
sudo apt-get install -y android-studio

#for eclipse
sudo apt-get install -y eclipse

#install develop tools
sudo apt-get install -y ccache swig3.0

#for python
sudo apt-get install -y ipython bpython

sudo apt-get install -y virtualenv

sudo apt-get install -y virtualenvwrapper

sudo apt-get install -y intellij-idea-community

sudo apt-get install -y pycharm-community

#sudo apt-get install libffi-dev

#sudo apt-get install libssl-dev

#sudo apt-get install libxml2-dev libxslt1-dev

#sudo apt-get install libmysqlclient-dev

#install mysql
#sudo apt-get install -y mysql-server

#install python-dev
#sudo apt-get install -y python-dev

#install libmysqlclient-dev
#sudo apt-get install libmysqlclient-dev

#chnroute setup
# https://github.com/fivesheep/chnroutes

#download skype
# http://www.skype.com

# create github folder
mkdir -p ~/github

# download bash config from github
mkdir -p ~/.bash.d
cd ~/github
git clone https://github.com/yexianghu/yezi_bash.git
ln -s ~/github/yezi_bash ~/.bash.d
echo "source ~/.bash.d/all.sh" >> ~/.bashrc
wget --no-check-certificate https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh
source ~/.bashrc


#download emacs configure from github
cd ~/github
git clone https://github.com/yexianghu/yezi_emacs_configure.git
cd ~/github/yezi_emacs_configure
git checkout -b new_dev origin/new_dev
ln -s ~/github/yezi_emacs_configure ~/.emacs.d


#download bcompare
# http://www.scootersoftware.com/download.php

#download git-diffall
cd ~/github
git clone https://github.com/thenigan/git-diffall.git
sudo cp /home/yezi/github/git-diffall/git-diffall $(git --exec-path)
