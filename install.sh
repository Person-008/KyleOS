#! /bin/bash


# create temporary install list
cat native.sh > temp.nat
cat foreign.sh > temp.fo

nvidia=false
echo
echo \#############################################################################################################
echo
read -p "install nvidia drivers? [y/n]: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo nvidia-open-dkms >> temp.nat
	nvidia=true
fi
echo
echo \#############################################################################################################
echo
read -p "install steam (ONLY IF MULTILIB IS ENABLED)? [y/n]: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo steam >> temp.nat
	if $nvidia
	then
		echo nvidia-utils >> temp.nat
	else
		echo
		echo \#############################################################################################################
		echo
		read -p "Intel graphics Card? [y/n]: "
		if [[ $REPLY =~ ^[Yy]$ ]]
		then
			echo vulkan-intel >> temp.nat
		else
			echo vulkan-radeon >> temp.nat
		fi
	fi
fi
echo
echo \#############################################################################################################
echo
read -p "install vlc with all plugins? [y/n]: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo vlc >> temp.nat
	echo vlc-plugins-all >> temp.nat
fi
echo
echo \#############################################################################################################
echo
read -p "install krita? [y/n]: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo krita >> temp.nat
fi
echo
echo \#############################################################################################################
echo
read -p "install opentabletdriver? [y/n]: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo opentabletdriver >> temp.fo
fi
echo
echo \#############################################################################################################
echo
read -p "install anki? [y/n]: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo anki >> temp.fo
fi
echo
echo \#############################################################################################################
echo
read -p "install fcitx5-mozc (japanese support - needs to be configured)? [y/n]: "
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo fcitx5-mozc >> temp.nat
	echo fcitx5-config-qt >> temp.nat
fi

# install pacman packages
cat temp.nat | sudo pacman -Sy - --noconfirm

# install AUR packages
sudo pacman -Sy --needed base-devel --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

cat temp.fo | yay -Sy - --answerdiff None --answerclean None --mflags "--noconfirm" --sudoloop

# apply configs
sudo pacman -Sy --needed rsync --noconfirm

su -c 'rsync -crl root/ / -v'
gsettings set org.gnome.desktop.interface gtk-theme Survey
gsettings set org.gnome.desktop.interface icon-theme Survey
sudo locale-gen

sudo chmod +x /usr/share/scripts/thematic
sudo chmod +x /usr/share/scripts/thematic-rofi-menu
sudo chmod +x /usr/share/scripts/thematic-power-menu

# install pipes.sh
git clone https://github.com/pipeseroni/pipes.sh
cd pipes.sh
sudo make install
cd ..
sudo rm -r pipes.sh

sudo chsh -s /usr/bin/fish
chsh -s /usr/bin/fish

# apply services
sudo systemctl disable getty@tty1.service
sudo systemctl disable getty@tty2.service
sudo systemctl disable getty@tty3.service
sudo systemctl enable ly@tty1.service
sudo systemctl enable ly@tty2.service
sudo systemctl enable ly@tty3.service

killall bash
