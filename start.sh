#!/bin/bash

sudo pacman -Syu

# INSTALL ALL PROGRAM
sudo pacman -S i3 xorg lightdm
sudo pacman -S git nvim

# CONFIGURE I3WM
cp i3wm/config ~/.config/i3

sudo systemctl enable lightdm

# CONFIGURE XORG
sudo cp worg/90-touchpad.conf /etc/X11/xorng.conf.d/

# CONFIGURE POLYBAR
cp launch.sh ~/.config/polybar
cp config.ini ~/.config/polybar

# install and configure kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/

# configure git
git config --global user.email "victor.eduardo.comecial@gmail.com"
git config --global user.name "Victor Eduardo"

@ configure ssh key
ssh-keygen -t ed25519 -C "victor.eduardo.comecial@gmail.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo 
echo "=========== SHOW SSH KEY ==========="
echo
cat ~/.ssh/id_ed25519.pub

