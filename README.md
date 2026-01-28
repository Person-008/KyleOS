# KyleOS


<p align="center">
<img src="https://github.com/Person-008/KyleOS/blob/main/images/Frontier.png">
</p>

---

[What is this?](#what-is-this)  
[Images](#images)  
[Installing](#installing)  
[Custom Themes](#custom-themes)  
[License](#license) 

## What is this?

This is an install script with accompanying dotfiles for my personal Arch Linux configuration.

I call it KyleOS because I want to.  
No my name is not, and never was Kyle.  
I also don't know anyone named Kyle.  
And I don't plan on meeting anyone named Kyle.  

|   |   |   |
|---|---|---|
| Distro | [Arch](https://archlinux.org/) |
| WM | [Niri](https://github.com/YaLTeR/niri) |
| Terminal | [alacritty](https://github.com/alacritty/alacritty) |
| Bar | [waybar](https://github.com/Alexays/Waybar/) |
| Menu | [rofi](https://davatorium.github.io/rofi/) |
| Notification | [mako](https://github.com/emersion/mako) |
| File Manager | [Thunar](https://docs.xfce.org/xfce/thunar/start) & [ranger](https://ranger.fm/) |
| Lockscreen | [swaylock](https://github.com/swaywm/swaylock) & [corrupter](https://github.com/r00tman/corrupter)) |

Themes based on artworks by [PrisonerCoin](https://prisonercoin.newgrounds.com/)

> [!NOTE]
> a mostly complete package list can be found in [native.sh](https://github.com/Person-008/KyleOS/blob/main/native.sh) & [foreign.sh](https://github.com/Person-008/KyleOS/blob/main/foreign.sh)  
> some optional packages are listed in [install.sh](https://github.com/Person-008/KyleOS/blob/main/install.sh)

## Images

<details>
<summary>Themes</summary>
<p align="center">
<img src="https://github.com/Person-008/KyleOS/blob/main/images/themes.gif" width = 500>
</p>
</details>

<details>
<summary>Thematic Menu</summary>
<p align="center">
<img src="https://github.com/Person-008/KyleOS/blob/main/images/thematic.gif?raw=true" width = 500>
</p>
</details>

<details>
<summary>Rofi Theme</summary>
<p align="center">
<img src="https://github.com/Person-008/KyleOS/blob/main/images/rofi.gif?raw=true" width = 500>
</p>
</details>

<details>
<summary>Power Menu</summary>
<p align="center">
<img src="https://github.com/Person-008/KyleOS/blob/main/images/power.gif?raw=true" width = 500>
</p>
</details>

<details>
<summary>Lock Screen</summary>
<p align="center">
<img src="https://github.com/Person-008/KyleOS/blob/main/images/1.png?raw=true" width = 500>
</p>

<p align="center">
<img src="https://github.com/Person-008/KyleOS/blob/main/images/2.png?raw=true" width = 500>
</p>
</details>

themes are applied to:  
- alacritty  
- gtk theme/icons  
- nvim  
- niri  
- wallpaper
- mako

## Installing

> [!WARNING]
> Follow these instructions at your own risk.  
> I am not responsible if any of this code causes loss of data.  
> Be a responsible adult, read the scripts.  

- follow the Arch Linux [Installation guide](https://wiki.archlinux.org/title/Installation_guide) to set up a minimal arch installation with internet access,  
  with at least one superuser that isn't root
- clone the repo ```git clone https://github.com/Person-008/KyleOS```
- ```cd KyleOS```
- install using ```bash install.shcurro```
- follow the prompts
> [!NOTE]  
> The script will ask for your password and confirmation a handful of times  
> Don't leave it unattended for long

> [!NOTE]
> If niri doesn't start when logging in, you may need to configure hyfetch by logging into a shell  
> 
> This is necessary because fish is configured to launch with hyfetch, and the first time hyfetch is launched it asks for configuration  
> which causes a black screen when logging in to Niri if it is not configured (i may or may not look into finding a fix for this)

> [!IMPORTANT]  
> The theme will not be set on the first launch  
> to change the theme and apply a wallpaper press ```Mod + T```

## Custom Themes

I am using my own custom theme changer called [thematic](https://github.com/Person-008/KyleOS/tree/main/root/usr/share/scripts)

Custom themes need an entry in /etc/thematic/ThemeName.conf
> [!NOTE]
> The thematic config files contain all the info you should need on how to
> add your own theme

> [!TIP]
> for gtk themes and icons i recommend [themix-gui](https://github.com/themix-project/themix-gui) tool
> it can also export all other color schemes except the niri colors, but those are just the active and inactive colors in the niri layout file

## License

The Artworks for the Wallpapers were not created by me, i just based the color schemes on them.
They were all created by [PrisonerCoin(2023)](https://prisonercoin.newgrounds.com) and are all licensed under a [CC BY-NC-SA 3.0](https://creativecommons.org/licenses/by-nc-sa/3.0/legalcode) license. As such the thumbnails I created using these images are also licensed under that same license

[Dyson.gif](https://github.com/Person-008/KyleOS/blob/main/root/etc/thematic/Dyson/Dyson.gif) - [Dyson Analasys](https://www.newgrounds.com/art/view/prisonercoin/dyson-anaysis) - [cc PrisonerCoin(2023)](https://prisonercoin.newgrounds.com)  
[Frontier.gif](https://github.com/Person-008/KyleOS/blob/main/root/etc/thematic/Frontier/Frontier.gif) - [Final Frontier](https://www.newgrounds.com/art/view/prisonercoin/final-frontier) - [cc PrisonerCoin(2022)](https://prisonercoin.newgrounds.com)  
[Puncture.gif](https://github.com/Person-008/KyleOS/blob/main/root/etc/thematic/Puncture/Puncture.gif) - [Puncture](https://www.newgrounds.com/art/view/prisonercoin/puncture) - [cc PrisonerCoin(2023)](https://prisonercoin.newgrounds.com)  
[SlowEnd.gif](https://github.com/Person-008/KyleOS/blob/main/root/etc/thematic/SlowEnd/SlowEnd.gif) - [Slow End](https://www.newgrounds.com/art/view/prisonercoin/slow-end) - [cc PrisonerCoin(2023)](https://prisonercoin.newgrounds.com)  
[Survey.jpg](https://github.com/Person-008/KyleOS/blob/main/root/etc/thematic/Survey/Survey.jpg) - [Survey Complete](https://www.artstation.com/artwork/Ze5nDX) - [cc PrisonerCoin(2021)](https://prisonercoin.newgrounds.com)  

[Dyson thumbnail](https://github.com/Person-008/KyleOS/blob/main/root/etc/thematic/Dyson/Thumbnail.png) - cc Rosenkranz  
[Frontier thumbnail](https://github.com/Person-008/KyleOS/blob/main/root/etc/thematic/Frontier/Thumbnail.png) - cc Rosenkranz  
[Puncture thumbnail](https://github.com/Person-008/KyleOS/blob/main/root/etc/thematic/Puncture/Thumbnail.png) - cc Rosenkranz  
[SlowEnd thumbnail](https://github.com/Person-008/KyleOS/blob/main/root/etc/thematic/SlowEnd/Thumbnail.png) - cc Rosenkranz  
[Survey thumbnail](https://github.com/Person-008/KyleOS/blob/main/root/etc/thematic/Survey/Thumbnail.png) - cc Rosenkranz  

All except the images in this repository are licensed under the following license

> [!NOTE]
> Do let me know if I made a mistake in the licensing, I am doing this for the first time

MIT License

Copyright (c) 2026 Rosenkranz

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
