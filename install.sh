#! /bin/bash

# create temporary install list
cat native.sh > temp.nat
cat foreign.sh > temp.for


# install nvidia drivers if nececarry
echo
echo \#############################################################################################################
echo
read -p "install nvidia drivers? [y/n]" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo nvidia-open-dkms >> temp.nat
fi

# install pacman packages
cat temp.nat | sudo pacman -Sy -

# install AUR packages
sudo pacman -Sy --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

cat temp.for | yay -Sy -

# apply configs
sudo pacman -Sy --needed rsync

su -c 'rsync -cr root/ / -v; chmod +x /urs/bin/rofi-power-menu'
gsettings set org.gnome.desktop.interface gtk-theme RetroDark
sudo locale-gen

# install pipes.sh
git clone https://github.com/pipeseroni/pipes.sh
cd pipes.sh
sudo make install
cd ..
sudo rm -r pipes.sh

# apply services
sudo systemctl disable getty@tty1.service
sudo systemctl disable getty@tty2.service
sudo systemctl disable getty@tty3.service
sudo systemctl enable ly@tty1.service
sudo systemctl enable ly@tty2.service
sudo systemctl enable ly@tty3.service
