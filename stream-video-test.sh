#!/bin/bash
ffmpeg -re -i StreamClamTest.mp4 -loop 1 -f flv -c:v h264 -c:a aac -strict -2 "$1"
