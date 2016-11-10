#!/bin/bash
ffmpeg -re -i test-out.mp4 -loop 1 -f flv -c:v h264 -c:a aac -strict -2 "$1"
