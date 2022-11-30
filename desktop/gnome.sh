#!/bin/bash

printf "Updating gnome tweaks values"
#reset the default pop os app launcher to another key so super_L can be used by ulauncher
gsettings set org.gnome.mutter overlay-key 'Super_R'

#Increase dock sensitivity
gsettings set org.gnome.shell.extensions.dash-to-dock pressure-threshold 0

#Install Mullvad VPN
# printf "Mullvad VPN"
# wget --content-disposition https://mullvad.net/download/app/deb/latest
# sudo apt install -y ./$(ls | grep MullvadVPN)
# rm -rf $(ls | grep MullvadVPN)

#Setup gnome Extensions
printf "Setting up gnome extensions"
sudo apt install gnome-shell-extensions
sudo apt install chrome-gnome-shell

#Install custom corners extensions
wget https://github.com/G-dH/custom-hot-corners-extended/releases/latest/download/custom-hot-corners-extended@G-dH.github.com.zip
gnome-extensions install --force custom-hot-corners-extended@G-dH.github.com.zip
gnome-extensions enable custom-hot-corners-extended@G-dH.github.com

gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true
gsettings set org.gnome.shell.app-switcher current-workspace-only true
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true

# sudo apt install blueman

sudo apt install heif-gdk-pixbuf
sudo apt install heif-thumbnailer

https://github.com/TheAssassin/AppImageLauncher/releases https://github.com/TheAssassin/AppImageLauncher/releases &