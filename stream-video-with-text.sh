#!/bin/bash

echo "$1"

ffmpeg -re \
	   -i test-out.mp4 \
	   -vf "sendcmd=f=send.cmd,drawtext=\
				fontsize=70:\
				fontcolor=white:\
				fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf:\
				x=100:\
				y=100:\
				text='Init text, not changed'" \
	   -f flv \
	   -c:v h264 \
	   -c:a copy "$1"

