#!/bin/bash

sudo apt-get update && sudo apt-get dist-upgrade
canonical_livepatch
problem_reporting
net_tools
vlc
media_codecs
gnome_extensions
archive
wine
laptop_mode_tools
timeshift
midnight_commander
uget
tlp
playonlinux
ubuntu_cleaner
sublimetext
brave
teamviewer
terminator
xterm
xfce4_terminal
cool_retro_term
openshot
gnome_tweaks
obs_studio
vs_code
htop
gimp
git
pip2
ipython
okular
anydesk
vim

canonical_livepatch(){
	sudo apt update
	sudo apt install snapd
	sudo snap install canonical-livepatch
	sudo canonical-livepatch enable xxxxc4xxxx67xxxxbxxxxbxxxxfbxx4e
}
problem_reporting(){
	sudo apt update
	sudo apt install apport
}
net_tools(){
	sudo apt update
	sudo apt install net-tools -y
}
vlc(){
	sudo snap install vlc
}
media_codecs(){
	sudo apt install ubuntu-restricted-extras
}
gnome_extensions(){
	sudo apt update
	sudo apt install chrome-gnome-shell
	sudo apt install firefox-gnome-shell
}
archive(){
	sudo apt install rar unrar p7zip-full p7zip-rar
}
wine(){
	sudo apt install wine-stable
}
laptop_mode_tools(){
	sudo apt install laptop-mode-tools
}
timeshift(){
	sudo add-apt-repository -y ppa:teejee2008/ppa
	sudo apt-get update
	sudo apt-get install timeshift
}
midnight_commander(){
	sudo add-apt-repository universe
	sudo apt update
	sudo apt install mc
}
uget(){
	sudo add-apt-repository ppa:plushuang-tw/uget-stable
	sudo apt-get update
	sudo apt install uget
}
tlp(){
	sudo apt install tlp tlp-rdw
	sudo tlp start
}
playonlinux(){
	sudo apt update
	sudo apt-get install playonlinux
}
ubuntu_cleaner(){
	sudo add-apt-repository ppa:gerardpuig/ppa
	sudo apt-get update
	sudo apt-get install Ubuntu-cleaner
}
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
cool_retro_term(){
	sudo add-apt-repository ppa:vantuz/cool-retro-term
	sudo apt-get update
	sudo apt-get install cool-retro-term
}
openshot(){
	sudo add-apt-repository ppa:openshot.developers/ppa
	sudo apt-get update
	sudo apt-get install openshot-qt
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
vim(){
	sudo apt-get install libncurses5-dev libncursesw5-dev
	sudo apt install make
	sudo apt install build-essential
	sudo git clone https://github.com/vim/vim.git
	cd vim/src
	sudo make
	sudo make install
	cd ~/
	# sudo apt remove vim
}
