#!/usr/bin/env bash

fullscreen() {
	date_time=$(date "+%Y%m%d%H%M%S")
	maim | tee /home/terack/Pictures/scr/$date_time.png | xclip -selection clipboard -t image/png
	dunstify -r 69 "took a fullscreen shot"
}

fullscreen

# Functions are here to make the code modular (for adding checks, conditions, etc)
