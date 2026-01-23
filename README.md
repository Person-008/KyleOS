# KyleOS

---

[What is this?](#what-is-this)  
[Disclaimer](#disclaimer)  
[Installing](#installing)  
[Custom Themes](#custom-themes)  
[Credits](#credits)  

## What is this?

This is an install script with accompanying dotfiles  
for an Arch Linux installation of my liking.
I call it KyleOS because I want to,  
no my name is not and never was Kyle,  
I also don't know anyone named Kyle.

Distro: Arch
WM: Niri
Terminal: alacritty
Bar: waybar
Menu: rofi
Notification: TODO
File Manager: Thunar & ranger
Lockscreen: swaylock (using [lock.sh](https://github.com/Person-008/KyleOS/blob/main/root/usr/bin/lock.sh))
Themes based on artworks by [PrisonerCoin](https://prisonercoin.newgrounds.com/)

the full package list can be found in [native.sh](https://github.com/Person-008/KyleOS/blob/main/native.sh) & [foreign.sh](https://github.com/Person-008/KyleOS/blob/main/foreign.sh)

TODO: add images

themes are applied to:  
- alacritty  
- gtk theme/icons  
- nvim  
- niri  
- wallpaper  

## Disclaimer

Use this at your own risk.
I am not responsible for your data.
Be a responsible adult.

## Installing

- follow the Arch Linux [Installation guide](https://wiki.archlinux.org/title/Installation_guide) to set up a minimal arch installation with internet access
- clone the repo ```git clone https://github.com/Person-008/KyleOS```
- ```cd KyleOS```
- install using ```bash install.sh```
- follow the prompts
- reboot

The script will ask for your password and confirmation a handful of times  

After the script has run launch ```fish``` and follow the instructions to set up ```hyfetch```  
Now restart and log in  

The Wallpaper will not be set on the first launch to change the theme and apply a wallpaper press ```Mod + T```
The custom rofi theme "thematic" needs to be enabled using ```rofi-theme-selector```

## Custom Themes

I am using my own custom theme changer called [thematic](https://github.com/Person-008/KyleOS/tree/main/root/usr/bin)

Custom themes need an entry in /etc/thematic/ThemeName.conf

for gtk themes and icons i recomment [this](https://github.com/themix-project/themix-gui) tool, though the installation guide seems to be out of date

## Credits

The Artworks for the Wallpapers were not created by me.

[Dyson.gif](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/wallpapers/Dyson.gif) - [Dyson Analasys](https://www.newgrounds.com/art/view/prisonercoin/dyson-anaysis) by [PrisonerCoin(2023)](https://prisonercoin.newgrounds.com)  
[Frontier.gif](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/wallpapers/Frontier.gif) - [Final Frontier](https://www.newgrounds.com/art/view/prisonercoin/final-frontier) [by PrisonerCoin(2022)](https://prisonercoin.newgrounds.com)  
[Puncture.gif](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/wallpapers/Puncture.gif) - [Puncture](https://www.newgrounds.com/art/view/prisonercoin/puncture) by [PrisonerCoin(2023)](https://prisonercoin.newgrounds.com)  
[SlowEnd.gif](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/wallpapers/SlowEnd.gif) - [Slow End](https://www.newgrounds.com/art/view/prisonercoin/slow-end) by [PrisonerCoin(2023)](https://prisonercoin.newgrounds.com)  
[Survey.jpg](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/wallpapers/Survey.jpg) - [Survey Complete](https://www.artstation.com/artwork/Ze5nDX) by [PrisonerCoin(2021)](https://prisonercoin.newgrounds.com)  
