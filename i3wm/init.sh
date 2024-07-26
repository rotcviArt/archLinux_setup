#!/bin/bash

# INSTALL I3 LUGHTDM AND ENABLE LIGHTDM


sudo pacman -S i3 xorg lightdm lightdm-gtk-greeter

sudo systemctl enable lightdm
