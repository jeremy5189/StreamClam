#!/bin/bash

# Length t = 60
ffmpeg -re \
	-framerate "1/10" \
	-t "$1" \
	-loop 1 \
	-r 25 \
	-i test/img-%03d.png \
	-i test-audio.wav \
	-pix_fmt yuv420p \
	-c:v h264 \
	-c:a aac \
	-strict -2 \
	-b:a 192k \
	-f flv "$2"

#ffmpeg -re -i test-out.mp4 -loop 1 -f flv -c:v h264 -c:a aac -strict -2 "$1"
