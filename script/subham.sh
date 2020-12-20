#!/bin/bash

sudo apt update && apt upgrade
sublimetext(){
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text
	# sudo apt-get remove sublime-text && sudo apt-get autoremove
}

brave(){
	curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
	sudo sh -c 'echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com `lsb_release -sc` main" >> /etc/apt/sources.list.d/brave.list'
	sudo apt update
	sudo apt install brave-browser brave-keyring
	# sudo apt remove --autoremove brave-browser brave-keyring
}
teamviewer(){
	wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
	sudo apt install ./teamviewer_amd64.deb
}
terminator(){
	sudo add-apt-repository ppa:gnome-terminator
	sudo apt-get update
	sudo apt-get install terminator
	# sudo apt-get remove terminator
	# sudo apt-get remove --auto-remove terminator
	# sudo apt-get purge terminator
}
xterm(){
	sudo apt-get update -y
	sudo apt-get install -y xterm
}
xfce4_terminal(){
	sudo apt-get update -y
	sudo apt-get install -y xfce4-terminal
}
gnome_tweaks(){
	sudo apt-get update
	sudo apt-add-repository universe
	sudo apt install gnome-tweak-tool
}
obs_studio(){
	sudo apt update
	sudo apt install obs-studio
}
vs_code(){
	sudo apt update
	sudo apt install software-properties-common apt-transport-https wget
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	sudo apt update
	sudo apt install code
}
htop(){
	sudo apt update
	sudo apt install htop
}
gimp(){
	sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge
	sudo apt update && sudo apt install gimp gimp-gmic
	sudo apt install ppa-purge && sudo ppa-purge ppa:otto-kesselgulasch/gimp-edge
}
git(){
	sudo apt update
	sudo apt install git
}
pip2(){
	sudo apt update
	sudo apt install python-pip
}
ipython(){
	sudo apt update
	sudo pip install ipython
}
okular(){
	sudo apt update
	sudo apt install okular
}
anydesk(){
	sudo apt update
	sudo apt -y upgrade
	wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
	echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
	sudo apt update
	sudo apt install anydesk
}
