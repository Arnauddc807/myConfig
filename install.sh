#!/bin/bash
cp -r .config ~/.config
sudo pacman -S xorg-server i3-wm rofi rofi-calc rofi-emoji picom polybar i3blocks i3lock i3status alacritty dmenu pavucontrol fish
yay -S ttf-iosevka-nerd noto-fonts-emoji

git clone https://github.com/lr-tech/rofi-themes-collection.git
rofi-themes-collection
mkdir -p ~/.local/share/rofi/themes/
cp themes/squared-nord.rasi ~/.local/share/rofi/themes/
