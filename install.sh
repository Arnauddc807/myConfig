#!/bin/bash

#place .config in its place
cp -r .config ~/.config

#install packages
sudo pacman -S xorg-server i3-wm rofi picom polybar i3blocks i3lock i3status alacritty dmenu pavucontrol fish xdg-user-dirs
yay -S ttf-iosevka-nerd noto-fonts-emoji

#install rofi theme
git clone https://github.com/lr-tech/rofi-themes-collection.git
rofi-themes-collection
mkdir -p ~/.local/share/rofi/themes/
cp themes/squared-nord.rasi ~/.local/share/rofi/themes/

#beautiful background
mkdir -p $(xdg-user-dir PICTURES)/wallpapers/
cp win11.jpg $(xdg-user-dir PICTURES)/wallpapers/

