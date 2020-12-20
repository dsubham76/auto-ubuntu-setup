#!/bin/bash

#################################################################
# This shell script is specially made for robot programing systems. 
# pip 2 will be installed instead of pip3.
# You can change this script manually by which packages you need. 
# To enable canonical livepatch you need to sign in your ubuntu account
##################################################################
timer()
{
	secs=$((2))
	shift
	msg=$@
	while [ $secs -gt 0 ]; do
	   echo -ne "$secs\033[0K\r"
	   printf "\r\033[KWaiting %.d seconds $msg" $((secs--))
	   sleep 1
	done
	echo
}

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

canonical_livepatch()
{
	sudo apt update
	sudo apt install snapd
	sudo snap install canonical-livepatch
	sudo canonical-livepatch enable xxxxc4xxxx67xxxxbxxxxbxxxxfbxx4e
	timer
}

problem_reporting()
{
	sudo apt update
	sudo apt install apport
	timer
}

net_tools()
{
	sudo apt update
	sudo apt install net-tools -y
	timer
}

vlc()
{
	sudo snap install vlc
	timer
}

media_codecs()
{
	sudo apt install ubuntu-restricted-extras
	timer
}

gnome_extensions()
{
	sudo apt update
	sudo apt install chrome-gnome-shell
	sudo apt install firefox-gnome-shell
	timer
}

archive()
{
	sudo apt install rar unrar p7zip-full p7zip-rar
	timer
}

wine()
{
	sudo apt install wine-stable
	timer
}

laptop_mode_tools()
{
	sudo apt install laptop-mode-tools
	timer
}

timeshift()
{
	sudo add-apt-repository -y ppa:teejee2008/ppa
	sudo apt-get update
	sudo apt-get install timeshift
	timer
}

midnight_commander()
{
	sudo add-apt-repository universe
	sudo apt update
	sudo apt install mc
	timer
}

uget()
{
	sudo add-apt-repository ppa:plushuang-tw/uget-stable
	sudo apt-get update
	sudo apt install uget
	timer
}

tlp()
{
	sudo apt install tlp tlp-rdw
	sudo tlp start
	timer
}

playonlinux()
{
	sudo apt update
	sudo apt-get install playonlinux
	timer
}

ubuntu_cleaner()
{
	sudo add-apt-repository ppa:gerardpuig/ppa
	sudo apt-get update
	sudo apt-get install Ubuntu-cleaner
	timer
}

sublimetext()
{
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text
	timer
	# sudo apt-get remove sublime-text && sudo apt-get autoremove
}

brave()
{
	curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
	sudo sh -c 'echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com `lsb_release -sc` main" >> /etc/apt/sources.list.d/brave.list'
	sudo apt update
	sudo apt install brave-browser brave-keyring
	timer
	# sudo apt remove --autoremove brave-browser brave-keyring
}

teamviewer()
{
	wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
	sudo apt install ./teamviewer_amd64.deb
	timer
}

terminator()
{
	sudo add-apt-repository ppa:gnome-terminator
	sudo apt-get update
	sudo apt-get install terminator
	timer
	# sudo apt-get remove terminator
	# sudo apt-get remove --auto-remove terminator
	# sudo apt-get purge terminator
}

xterm()
{
	sudo apt-get update -y
	sudo apt-get install -y xterm
	timer
}

xfce4_terminal()
{
	sudo apt-get update -y
	sudo apt-get install -y xfce4-terminal
	timer
}

cool_retro_term()
{
	sudo add-apt-repository ppa:vantuz/cool-retro-term
	sudo apt-get update
	sudo apt-get install cool-retro-term
	timer
}

openshot()
{
	sudo add-apt-repository ppa:openshot.developers/ppa
	sudo apt-get update
	sudo apt-get install openshot-qt
	timer
}

gnome_tweaks()
{
	sudo apt-get update
	sudo apt-add-repository universe
	sudo apt install gnome-tweak-tool
	timer
}

obs_studio()
{
	sudo apt update
	sudo apt install obs-studio
	timer
}

vs_code()
{
	sudo apt update
	sudo apt install software-properties-common apt-transport-https wget
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	sudo apt update
	sudo apt install code
	timer
}

htop()
{
	sudo apt update
	sudo apt install htop
	timer
}

gimp()
{
	sudo add-apt-repository ppa:otto-kesselgulasch/gimp-edge
	sudo apt update && sudo apt install gimp gimp-gmic
	sudo apt install ppa-purge && sudo ppa-purge ppa:otto-kesselgulasch/gimp-edge
	timer
}

git()
{
	sudo apt update
	sudo apt install git
	timer
}

pip2()
{
	sudo apt update
	sudo apt install python-pip
	timer
}

ipython()
{
	sudo apt update
	sudo pip install ipython
	timer
}

okular()
{
	sudo apt update
	sudo apt install okular
	timer
}

anydesk()
{
	sudo apt update
	sudo apt -y upgrade
	wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
	echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
	sudo apt update
	sudo apt install anydesk
	timer
}

vim()
{
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
