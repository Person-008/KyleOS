#! /bin/bash

# install pacman packages
cat config/10-native.sh | sudo pacman -Sy

# install AUR packages
sudo pacman -Sy --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

cat config/20-foregin.sh | paru -Sy

# apply configs
rsync config/files /

# apply services
systemctl disable getty@tty1.service
systemctl disable getty@tty2.service
systemctl disable getty@tty3.service
systemctl enable ly@tty3.service
systemctl enable ly@tty3.service
systemctl enable ly@tty3.service
