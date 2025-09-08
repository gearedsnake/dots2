#!/usr/bin/env bash

inc_volume() {
    # Unmute if muted
    [[ $(pulsemixer --get-mute) == 1 ]] && pulsemixer --unmute

    # Increase volume
    pulsemixer --max-volume 100 --change-volume +5

    # Get current volume
    VOLUME=$(pulsemixer --get-volume | cut -d' ' -f1)

    # Send notification with dunst
    dunstify -r 69 -h int:value:$VOLUME "VOLUME"
}

inc_volume

# Functions are here to make the code modular (for adding checks, conditions, etc)
