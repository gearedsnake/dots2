#!/usr/bin/env bash

cropscreen() {
	date_time=$(date "+%Y%m%d%H%M%S")
	maim -s | tee /home/terack/Pictures/scr/$date_time.png | xclip -selection clipboard -t image/png
	dunstify -r 69 "took a crop shot"
}

cropscreen

# Functions are here to make the code modular (for adding checks, conditions, etc)
