#!/bin/bash

ffmpeg -loop 1 -i "$1" -i "$2" -c:v libx264 -b:v 4000k -minrate 4000k -maxrate 4000k -bufsize 8000k -vf "fps=60,scale=1920:1080" -c:a libmp3lame -b:a 320k -pix_fmt yuv420p -shortest "$3"

echo 'A MŰVELET BEFEJEZŐDÖTT.'
