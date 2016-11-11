#!/bin/bash

# Length t = 60
ffmpeg -re -t "$1" -loop 1 -i test-image.png -i test-audio.wav -c:v h264 -c:a aac -strict -2 -b:a 192k -f flv "$2"

#ffmpeg -re -i test-out.mp4 -loop 1 -f flv -c:v h264 -c:a aac -strict -2 "$1"
