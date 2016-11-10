#!/bin/bash
ffmpeg -loop 1 -i test-image.png -i test-audio.wav -c:v libx264 -c:a aac -strict experimental -b:a 192k -shortest test-out.mp4
