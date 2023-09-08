#!/bin/bash

#place .config in its place
cp -r .config ~

#install packages
sudo pacman -S xorg-server xorg-xinit i3-wm lightdm lightdm-gtk-greeter rofi rofi-calc rofi-emoji picom polybar i3blocks i3lock i3status alacritty dmenu pavucontrol fish xdg-user-dirs feh playerctl

#change shell to fish
chsh -s /bin/fish

#enable lightdm
systemctl enable lightdm.service

#install yay and its packages
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -fr yay

yay -S ttf-iosevka-nerd noto-fonts-emoji


#install rofi theme
git clone https://github.com/lr-tech/rofi-themes-collection.git
mkdir -p ~/.local/share/rofi/themes/
cp rofi-themes-collection/themes/squared-nord.rasi ~/.local/share/rofi/themes/
rm -fr rofi-themes-collection

#beautiful background
mkdir -p /usr/share/backgrounds
cp win11.jpg /usr/share/backgrounds

