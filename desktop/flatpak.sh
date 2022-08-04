#!/bin/bash

printf "\nInstalling ULauncher"
sudo add-apt-repository ppa:agornostal/ulauncher -y && sudo apt update && sudo apt install ulauncher -y

printf "\nInstalling BRAVE\n"
flatpak install -y --noninteractive flathub com.brave.Browser

printf "\nInstalling Firefox\n"
flatpak install -y --noninteractive flathub org.mozilla.firefox

printf "\nInstalling Librewolf\n"
flatpak install -y --noninteractive flathub io.gitlab.librewolf-community

printf "\nInstalling VLC\n"
flatpak install -y --noninteractive flathub org.videolan.VLC

printf "\nInstalling Todoist\n"
flatpak install -y --noninteractive flathub com.todoist.Todoist
#flatpak run com.todoist.Todoist

printf "\ninstalling Obsidian\n"
flatpak install -y --noninteractive flathub md.obsidian.Obsidian

printf "\ninstalling VS Code\n"
flatpak install -y --noninteractive flathub com.vscodium.codium

printf "\ninstalling GnuCash\n"
flatpak install -y --noninteractive flathub org.gnucash.GnuCash

printf "\ninstalling Bitwarden\n"
flatpak install -y --noninteractive flathub com.bitwarden.desktop

printf "\ninstalling Flatseal\n"
flatpak install -y --noninteractive flathub com.github.tchx84.Flatseal

printf "\ninstalling Extension Manager\n"
flatpak install -y --noninteractive flathub com.mattjakeman.ExtensionManager 