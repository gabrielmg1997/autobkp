#!/bin/bash
#-------------------------------------------------
#Atualizando os Repo e procurando atualizações
sudo apt --fix-broken install -y
sudo apt remove firefox -y
sudo apt remove spectacle -y
sudo apt remove kcalc -y
sudo apt update -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
sudo add-apt-repository ppa:papirus/papirus -y 
sudo apt-get update -y 
#-------------------------------------------------
#Downloads 
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
wget -c https://download3.operacdn.com/pub/opera/desktop/67.0.3575.53/linux/opera-stable_67.0.3575.53_amd64.deb -O opera.deb
wget -c https://download.virtualbox.org/virtualbox/6.1.4/virtualbox-6.1_6.1.4-136177~Ubuntu~eoan_amd64.deb -O virtual.deb
wget -c https://github.com/iteufel/nwjs-ffmpeg-prebuilt/releases/download/0.44.1/0.44.1-linux-arm.zip
git clone https://github.com/vinceliuice/McMojave-kde.git
git clone git://anongit.kde.org/latte-dock
#-------------------------------------------------
#instalação
dpkg -i virtual.deb
dpkg -i chrome.deb
sudo apt --fix-broken install -y
sudo apt install telegram-desktop -y
sudo apt --fix-broken install -y
sudo apt install flameshot -y
sudo apt --fix-broken install -y
sudo apt install neofetch -y
sudo apt --fix-broken install -y
sudo apt install kvantum -y 
sudo apt --fix-broken install -y
sudo apt install tilda -y
sudo apt --fix-broken install -y
sudo apt install mousepad -y
sudo apt --fix-broken install
sudo apt install gnome-mvp -y
sudo apt --fix-broken install -y
sudo apt install audacious -y
sudo apt --fix-broken install -y
sudo apt install cmake extra-cmake-modules qtdeclarative5-dev libqt5x11extras5-dev libkf5iconthemes-dev libkf5plasma-dev libkf5windowsystem-dev libkf5declarative-dev libkf5xmlgui-dev libkf5activities-dev build-essential libxcb-util-dev libkf5wayland-dev git gettext libkf5archive-dev libkf5notifications-dev libxcb-util0-dev libsm-dev libkf5crash-dev libkf5newstuff-dev -y
sudo apt --fix-broken install -y
#-------------------------------------------------
#opera
dpkg -i opera.deb
unzip 0.44.1-linux-arm.zip
cp libffmpeg.so /usr/lib/x86_64-linux-gnu/opera
#--------------------------------------------------
#theme
cd McMojave-kde
sudo ./install.sh -y
cd ..
#---------------------------------------------------
#latte-dock
cd latte-dock
sudo ./install.sh -y
cd .. 
﻿plasmapkg2 --install org.kde.plasma.dittomenu.plasmoid
plasmapkg2 --install applet-latte-separator-0.1.1.plasmoid
plasmapkg2 --install presentwindows-v8.plasmoid
#---------------------------------------------------
#tilda/neof/latte/konsole/korla/speed/
cp -r tilda /home/gabriel/.config/
cp -r neofetch /home/gabriel/.config/
cp -r latte /home/gabriel/.config/
cp -r kdeglobals /home/gabriel/.kde/share/config/
cp -r speedtest /home/gabriel/
cp -r korla /home/gabriel/.local/share/icons/
cp -r konsole /home/gabriel/.local/share/
#cp -r com.github.vinceliuice.McMojave /home/gabriel/.local/share/plasma/look-and-feel/








