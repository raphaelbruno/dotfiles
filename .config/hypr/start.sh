#!/usr/bin/env bash

swww init
swww img ~/Pictures/Wallpapers/default.jpg

hyprlock
swayidle -w timeout 300 ~/.config/hypr/scripts/screenlock &

waybar &

dunst &
hyprctl setcursor 24 &

sleep 1
nm-applet --indicator &
blueman-applet &
