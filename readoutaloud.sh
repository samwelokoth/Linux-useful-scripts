#! /bin/bash

espeak_pid=$(pidof espeak)

# espeak argument reference:
# -a for volume. Max 200
# -p for pitch.  0 to 99, default is 50
# -v for voice

if [ -z "$espeak_pid"]
then
    xclip -out -selection primary | xclip -in -selection clipboard
    xsel --clipboard | tr "\n" " " | espeak -a 200 -p 60 -v english-us
else 
    kill $espeak_pid
fi
