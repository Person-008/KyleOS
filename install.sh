#! /bin/bash

# install pacman packages
cat config/10-native.sh | sudo pacman -Sy

# install AUR packages
sudo pacman -Sy --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

cat config/20-foregin.sh | yay -Sy

# apply configs
sudo pacman -Sy --needed rsync
rsync config/files /

# apply services
sudo systemctl disable getty@tty1.service
sudo systemctl disable getty@tty2.service
sudo systemctl disable getty@tty3.service
sudo systemctl enable ly@tty3.service
sudo systemctl enable ly@tty3.service
sudo systemctl enable ly@tty3.service
