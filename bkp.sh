#!/bin/bash
#-------------------------------------------------
#Atualizando os Repo e procurando atualizações
sudo apt update && sudo apt dist-upgrade && sudo apt autoremove && sudo apt autoclean
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
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
sudo apt install telegram-desktop -y
sudo apt install flameshot -y 
sudo apt install neofetch -y
sudo apt install kvantum -y 
sudo apt install tilda -y
sudo apt install cmake extra-cmake-modules qtdeclarative5-dev libqt5x11extras5-dev libkf5iconthemes-dev libkf5plasma-dev libkf5windowsystem-dev libkf5declarative-dev libkf5xmlgui-dev libkf5activities-dev build-essential libxcb-util-dev libkf5wayland-dev git gettext libkf5archive-dev libkf5notifications-dev libxcb-util0-dev libsm-dev libkf5crash-dev libkf5newstuff-dev -y

#-------------------------------------------------
#opera
dpkg -i opera.deb
unzip 0.44.1-linux-arm.zip
cp libffmpeg.so /usr/lib/x86_64-linux-gnu/opera
#--------------------------------------------------
#theme
cd McMojave-kde
./install
cd ..
#---------------------------------------------------
#latte-dock
cd latte-dock
./install 
cd .. 
#---------------------------------------------------
#tilda/neof/latte/konsole/korla/speed/
cp -r tilda /home/gabriel/.config/
cp -r neofetch /home/gabriel/.config/
cp -r latte /home/gabriel/.config/
mv -r speedtest /home/gabriel/
cp -r korla /home/gabriel/.local/share/icons/
cp -r konsole /home/gabriel/.local/share/







