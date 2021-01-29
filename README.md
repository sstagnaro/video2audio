# video2audio

Converts all video passed as argument from the current video format to the `$AUDIOEXT` audio format.

Conversions are performed with **ffmpeg** and executed in parallel (fork).

## Examples

Covert a single mp4:

```$ video2audio.sh myvideo.mp4```

Convert all video in the working directory:

```$ video2audio.sh *```