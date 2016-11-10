#!/bin/bash

# Same as audio
#ffmpeg -shortest -loop 1 -i test-image.png -i test-audio.wav -c:v libx264 -c:a aac -strict experimental -b:a 192k test-out.mp4

# Length t = 60
ffmpeg -t "$1" -loop 1 -i test-image.png -i test-audio.wav -c:v libx264 -c:a aac -strict experimental -b:a 192k test-out.mp4
