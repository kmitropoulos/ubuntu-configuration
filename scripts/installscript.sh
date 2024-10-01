#!/bin/bash

mkdir ~/.config
mkdir ~/.fonts
cp -r ../nvim ~/.config/
cp -r ../i3 ~/.config/
cp ../fonts/* ~/.fonts
fc-cache -fv
cp ../generic/& ~/

sudo apt-get update
sudo apt update
sudo apt-get upgrade
sudo apt upgrade

sudo apt-get install -y build-essential vim git cscope libncurses-dev libssl-dev bison flex
sudo apt-get install -y mysql-community-server qemu-system
sudo apt-get install -y git-email dos2unix

sudo apt-get install -y python3-pip python3-venv
sudo apt install gnome-tweaks

# neovim setup from latest

sudo apt-get install -y ninja-build gettext cmake unzip curl ripgrep
cd
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig


# install zsh
sudo apt install -y zsh
chsh -s $(which zsh)
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x ./install.sh
rm install.sh
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git


# i3 setup
sudo apt install -y i3 feh blueman volumeicon
sudo apt-get install pasystray
sudo snap install discord

# java check version
sudo apt install -y openjdk-21-jdk

# install clang18 --- check if another version is required
sudo apt-get install -y clangd-18
sudo apt install -y clang-tools-18
sudo ln -s /usr/bin/clang-18 /usr/bin/clang

# install nvidia drivers
sudo ubuntu-drivers autoinstall

# wireshark
# sudo apt install wireshark
# install wireshark from deb file in site(todo)

# dbeaver
# install dbeaver from deb file in site(todo)

# Errands todo list
sudo apt-get install -y flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub io.github.mrvladus.List

echo "---------------------------"
echo "change keyboard caps lock"
echo "/usr/share/X11/xkb"
echo "nvim symbols/pc"
echo "---------------------------"
echo "create ssh keys for github/lab"
echo "add to .ssh/config"
echo "    Host url"
echo "    PreferredAuthentications publickey"
echo "    IdentityFile pathtoprivkey"
echo "---------------------------"
echo "check .gitconfig in home folder and other configs"
echo "check . in home folder and other configs"
echo "check .zshrc and export env variables"
echo "---------------------------"
echo "follow commands to startup neovim"
echo "---------------------------"
echo "setup mysql root pass"
echo "---------------------------"
echo "do a reboot"
