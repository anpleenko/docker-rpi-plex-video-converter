#!/bin/bash

trap 'exit 2' TERM INT

for f in **/*.avi; do
    printf '\033[1;34;40m'
    echo "Converting $f"
    printf '\033[0m'    
    avconv -i "$f" -strict experimental -c:v libx264 "${f%.avi}.mp4" && rm "$f"
done 
