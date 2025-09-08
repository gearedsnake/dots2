#!/usr/bin/env bash

mute_volume() {
    # Unmute if muted
    if [[ `pulsemixer --get-mute` == 1 ]]; then
            VOLUME=$(pulsemixer --get-volume | cut -d' ' -f1)
	    pulsemixer --toggle-mute
            dunstify -r 69 -h int:value:$VOLUME "UNMUTED"
    else
            VOLUME=$(pulsemixer --get-volume | cut -d' ' -f1)
	    pulsemixer --toggle-mute
            dunstify -r 69 -h int:value:$VOLUME "MUTED"
    fi
}

mute_volume

# Functions are here to make the code modular (for adding checks, conditions, etc)
