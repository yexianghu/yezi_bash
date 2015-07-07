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

sudo apt-get update


#install chrome
sudo apt-get install google-chrome-stable

#install common tools
sudo apt-get install -y vim guake emacs24 synapse gconf-editor git subversion gcolor2 kolourpaint4 virtualbox global wireshark

#install develop tools
sudo apt-get install -y android-studio oracle-java7-installer ant gradle ccache swig3.0

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
ln -s ~/github/yezi_bash .bash.d
echo "source ~/.bash.d/all.sh" >> ~/.bashrc


#download emacs configure from github
cd ~/github
git clone https://github.com/yexianghu/yezi_emacs_configure.git
cd ~/github/yezi_emacs_configure
git checkout origin/new_dev
ln -s ~/github/yezi_emacs_configure ~/.emacs.d


#download bcompare
# http://www.scootersoftware.com/download.php






