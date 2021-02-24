#!/usr/bin/env bash

# Converts all video passed as argument
# from the current video format to the $AUDIOEXT audio format

AUDIOEXT="mp3"
AUDIORATE="128K"
MIOLOGLV="quiet"

for MIOVIDEO in "$@"; do
	ffmpeg -loglevel ${MIOLOGLV} -i "${MIOVIDEO}" -b:a ${AUDIORATE} -vn "${MIOVIDEO%.*}.$AUDIOEXT" &
done
