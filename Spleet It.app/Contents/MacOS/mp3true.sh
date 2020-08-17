#!/bin/bash

cd
source .bash_profile;
conda init;
conda activate my_env;

cd "$1"

for f in *.wav ; do ffmpeg -i "$f" -acodec libmp3lame -q:a 0 "${f%.*}.mp3"; done

exit;
