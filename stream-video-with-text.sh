#!/bin/bash

# ffmpeg -i test-out.mp4 -vf "sendcmd=f=send.cmd,drawtext=fontsize=20:fontcolor=white:x=100:y=100:text='Hello World'" -acodec copy test-out-text.mp4

echo "$1"

ffmpeg -re \
	   -i test-out.mp4 \
	   -vf "sendcmd=f=send.cmd,drawtext=\
				fontsize=50:\
				fontcolor=white:\
				fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf:\
				x=100:\
				y=100:\
				text='Init text, not changed'" \
	   -f flv \
	    -c:v h264 \
		-c:a aac -strict -2 "$1"
