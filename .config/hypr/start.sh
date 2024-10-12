#!/usr/bin/env bash

swww init
swww img ~/Pictures/Wallpapers/default.jpg

hyprlock
swayidle -w timeout 300 hyprlock &
hyprctl setcursor 24 &

dunst &
systemctl --user start plasma-polkit-agent &

waybar &

sleep 1
nm-applet --indicator &
blueman-applet &
