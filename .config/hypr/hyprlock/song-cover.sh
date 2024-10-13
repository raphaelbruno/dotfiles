#!/bin/bash

get_current_song_cover() {
    # Check if playerctl is installed
    if ! command -v playerctl &> /dev/null; then
        echo "playerctl is not installed. Please install it to use this script."
        exit 1
    fi

    # Get current song information, suppressing error messages
    music_info=$(playerctl metadata title 2>/dev/null)
    artist_info=$(playerctl metadata artist 2>/dev/null)
    cover_image=$(playerctl metadata mpris:artUrl 2>/dev/null)

    # Only display if there is music playing
    if [ -n "$music_info" ]; then
        echo $cover_image
    fi
}

get_current_song_cover
