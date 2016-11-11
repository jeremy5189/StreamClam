#!/bin/bash

ffmpeg -re \
	-threads 4 \
	-thread_queue_size 128 \
	-framerate 1/5 \
	-t "$1" \
	-loop 1 \
	-i test/img-%03d.png \
	-i test-audio.wav \
	-vf "fps=25,format=yuv420p" \
	-c:v h264 \
	-c:a aac \
	-strict -2 \
	-b:a 192k \
	-f flv "$2"
