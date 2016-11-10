#!/bin/bash

ffmpeg -i test-out.mp4 -vf "sendcmd=f=send.cmd,drawtext=fontsize=20:fontcolor=white:x=100:y=100:text='Hello Worl    d'" -acodec copy test-out-text.mp4
