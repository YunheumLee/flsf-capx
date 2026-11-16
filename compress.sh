#!/usr/bin/env bash
# Compress one video for the web and make its thumbnail.
# Usage: ./compress.sh <number 1-5> <input video>
# Example: ./compress.sh 3 "raw/Supplementary Video 3.mp4"
# Needs ffmpeg (https://ffmpeg.org). If the output is still over 25 MB, raise CRF (e.g. 30).
set -euo pipefail
n="$1"; in="$2"; crf="${CRF:-26}"
mkdir -p videos
ffmpeg -y -i "$in" \
  -vf "scale='min(1280,iw)':-2" \
  -c:v libx264 -preset slow -crf "$crf" -pix_fmt yuv420p \
  -c:a aac -b:a 96k -movflags +faststart \
  "videos/video${n}.mp4"
ffmpeg -y -ss 2 -i "videos/video${n}.mp4" -frames:v 1 -vf "scale='min(960,iw)':-2" -q:v 4 "videos/video${n}.jpg"
ls -lh "videos/video${n}.mp4" "videos/video${n}.jpg"
