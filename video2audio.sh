#!/bin/bash

# Converte tutti i video nella cartella corrente
# dal formato video $VIDEOEXT al formato audio $AUDIOEXT

VIDEOEXT="mp4"
AUDIOEXT="mp3"
AUDIORATE="128K"
MIOLOGLV="quiet"

for CONTA in {01..10}; do
	MIOVIDEO=$(ls $CONTA*.mp4)
	ffmpeg -loglevel $MIOLOGLV -i "${MIOVIDEO}" -b:a $AUDIORATE -vn "$(basename "${MIOVIDEO}" .$VIDEOEXT)".$AUDIOEXT
done
