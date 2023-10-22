#!/bin/bash

#place .config in its place
cp -r .config ~

#install packages
sudo pacman -S xorg-server xorg-xinit i3-wm lightdm lightdm-gtk-greeter rofi rofi-calc rofi-emoji picom polybar i3blocks i3lock i3status alacritty dmenu pavucontrol fish xdg-user-dirs feh playerctl

#change shell to fish
chsh -s /bin/fish

#enable lightdm
systemctl enable lightdm.service

#copy greeter cfg file
cp lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf

#set keyboard layout in x11
localectl --no-convert set-x11-keymap be

#install yay and its packages
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -fr yay

yay -S ttf-iosevka-nerd noto-fonts-emoji

#install rofi theme
git clone https://github.com/newmanls/rofi-themes-collection
mkdir -p ~/.local/share/rofi/themes/
cp rofi-themes-collection/themes/squared-nord.rasi ~/.local/share/rofi/themes/
rm -fr rofi-themes-collection

#beautiful background
mkdir -p /usr/share/backgrounds
cp *.jpg /usr/share/backgrounds

