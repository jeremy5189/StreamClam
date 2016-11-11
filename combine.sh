#!/bin/bash

# Length t = 60
ffmpeg \
	-thread_queue_size 1024 \
	-framerate 30 \
	-t "$1" \
	-loop 1 \
	-i test/img-%03d.png \
	-i test-audio.wav \
	-pix_fmt yuv420p \
	-c:v h264 \
	-c:a aac \
	-strict -2 \
	-b:a 192k \
	-f mp4 "$2"

#ffmpeg -re -i test-out.mp4 -loop 1 -f flv -c:v h264 -c:a aac -strict -2 "$1"
