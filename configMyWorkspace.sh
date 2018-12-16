#!/bin/bash

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo into /etc/pacman.conf
echo -e "\n[archlinuxcn]\nSigLevel = Optional TrustedOnly\nServer = https://mirrors.ustc.edu.cn/archlinuxcn/$arch"
echo 

sudo pacman-mirrors -i -c China -m rank

sudo pacman -Syy --noconfirm

sudo pacman -S --noconfirm archlinuxcn-keyring

sudo pacman -Syy --noconfirm


sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm vim feh rofi i3-wm i3blocks i3lock-color xautolock compton zsh yaourt google-chrome fcitx-sogoupinyin fcitx-im fcitx-configtool gotop ttf-monaco openssh neofetch screenfetch lolcat cowsay fortune-mod

sudo systemctl enable sshd.service
sudo systemctl start sshd.service

yaourt -S --noconfirm ttf-font-awesome-4

cd /usr/bin
sudo ln -sf vim vi
cd ~
echo ":set mouse-=a" > ~/.vimrc

sudo pacman -R --noconfirm jdk8-openjdk jre8-openjdk jre8-openjdk-headless java-environment-common java-runtime-common 

chsh -s /usr/bin/zsh

cd /usr/local
sudo ln -sf ~/.config/jdk1.8.0_191 java8
sudo ln -sf ~/.config/jdk1.8.0_191 jdk1.8.0_191
sudo ln -sf java8 java
cd ~

source ~/.zshrc
