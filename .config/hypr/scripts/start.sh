#!/usr/bin/env bash

swww init
swww img ~/Pictures/Wallpapers/default.jpg 
sh ~/.config/hypr/scripts/lock-screen

swayidle -w timeout 300 "~/.config/hypr/scripts/lock-screen" &
hyprctl setcursor 24 &

dunst &
systemctl --user start plasma-polkit-agent &

waybar &

sleep 1
nm-applet --indicator &
blueman-applet &