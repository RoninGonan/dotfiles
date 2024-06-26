#!/bin/bash

sudo apt install nala
sudo nala install kitty

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

sudo nala install bat
sudo nala install tldr
sudo nala install thefuck
sudo nala install starship
sudo nala intall btop
sudo nala install cmatrix

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo nala update
sudo nala install codium
sudo nala install godotsharp
sudo nala install nvim
sudo nala install autojump
sudo nala install jq
sudo nala install ripgrep 
sudo nala install zsh
sudo nala install zplug


echo "Installing codium/code extensions"
./install_extensions.sh
