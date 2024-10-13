#!/bin/bash

get_current_song() {
    # Check if playerctl is installed
    if ! command -v playerctl &> /dev/null; then
        exit 1
    fi

    # Get current song information
    music_info=$(playerctl metadata title 2> /dev/null)
    artist_info=$(playerctl metadata artist 2> /dev/null)

    # Only display if there is playing
    if [ -n "$music_info" ]; then
        echo "$music_info - $artist_info"
    fi
}

get_current_song
