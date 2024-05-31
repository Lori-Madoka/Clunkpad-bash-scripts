#!/bin/sh

SERVICES="pipewire.service pipewire-pulse.service"

pacman -S --needed alsa-utils pipewire pipewire-audio pipewire-pulse pipewire-jack pipewire-alsa wireplumber pavucontrol
pacman -S --needed lib32-pipewire lib32-pipewire-jack
SERVICES="pipewire.service pipewire-pulse.service"
systemctl --global enable $SERVICES
