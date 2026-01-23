# KyleOS

---

[What is this?](#what-is-this)  
[Installing](#installing)  
[Custom Themes](#custom-themes)  
[Credits](#credits)  

## What is this?

This is an install script with accompanying dotfiles for my personal Arch Linux configuration.

I call it KyleOS because I want to.  
No my name is not, and never was Kyle.  
I also don't know anyone named Kyle.  
And I don't plan on meeting anyone named Kyle.  

|   |   |   |
|---|---|---|
| Distro | Arch |
| WM | Niri |
| Terminal | alacritty |
| Bar | waybar |
| Menu | rofi |
| Notification | mako |
| File Manager | Thunar & ranger |
| Lockscreen | swaylock  (using [lock.sh](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/scripts/lock.sh)) |

Themes based on artworks by [PrisonerCoin](https://prisonercoin.newgrounds.com/)

> [!NOTE]
> a mostly complete package list can be found in [native.sh](https://github.com/Person-008/KyleOS/blob/main/native.sh) & [foreign.sh](https://github.com/Person-008/KyleOS/blob/main/foreign.sh)
> some optional packages are listed in [install.sh](https://github.com/Person-008/KyleOS/blob/main/install.sh)

TODO: add images
themes are applied to:  
- alacritty  
- gtk theme/icons  
- nvim  
- niri  
- wallpaper
- mako

## Installing

> [!WARNING]
> Use this at your own risk.  
> I am not responsible if any of this code causes loss of data.  
> Be a responsible adult, read the scripts.  

- follow the Arch Linux [Installation guide](https://wiki.archlinux.org/title/Installation_guide) to set up a minimal arch installation with internet access
- clone the repo ```git clone https://github.com/Person-008/KyleOS```
- ```cd KyleOS```
- install using ```bash install.sh```
> [!NOTE]  
> The script will ask for your password and confirmation a handful of times  
- follow the prompts
> [!IMPORTANT]  
> After the script has run launch ```fish``` and follow the instructions to set up ```hyfetch```

> [!NOTE]
> This is necessary because fish is configured to launch with hyfetch, and the first time hyfetch is launched it asks for configuration  
> which causes a black screen when logging in to Niri if it is not configured (i may or may not look into finding a fix for this)

The Wallpaper will not be set on the first launch to change the theme and apply a wallpaper press ```Mod + T```
The custom rofi theme "thematic" needs to be enabled using ```rofi-theme-selector```

## Custom Themes

I am using my own custom theme changer called [thematic](https://github.com/Person-008/KyleOS/tree/main/root/usr/share/scripts/thematic)

Custom themes need an entry in /etc/thematic/ThemeName.conf
> [!NOTE]
> The thematic config files contain all the info you should need on how to
> add your own theme

> [!TIP]
> for gtk themes and icons i recommend [themix-gui](https://github.com/themix-project/themix-gui) tool
> it can also export all other color schemes except the niri colors, but those are just the active and inactive colors in the niri layout file

## Credits

The Artworks for the Wallpapers were not created by me, i just based the color schemes on them.

The themes were generated using [themix-gui](https://github.com/themix-project/themix-gui).

[Dyson.gif](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/wallpapers/Dyson.gif) - [Dyson Analasys](https://www.newgrounds.com/art/view/prisonercoin/dyson-anaysis) by [PrisonerCoin(2023)](https://prisonercoin.newgrounds.com)  
[Frontier.gif](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/wallpapers/Frontier.gif) - [Final Frontier](https://www.newgrounds.com/art/view/prisonercoin/final-frontier) [by PrisonerCoin(2022)](https://prisonercoin.newgrounds.com)  
[Puncture.gif](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/wallpapers/Puncture.gif) - [Puncture](https://www.newgrounds.com/art/view/prisonercoin/puncture) by [PrisonerCoin(2023)](https://prisonercoin.newgrounds.com)  
[SlowEnd.gif](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/wallpapers/SlowEnd.gif) - [Slow End](https://www.newgrounds.com/art/view/prisonercoin/slow-end) by [PrisonerCoin(2023)](https://prisonercoin.newgrounds.com)  
[Survey.jpg](https://github.com/Person-008/KyleOS/blob/main/root/usr/share/wallpapers/Survey.jpg) - [Survey Complete](https://www.artstation.com/artwork/Ze5nDX) by [PrisonerCoin(2021)](https://prisonercoin.newgrounds.com)  
