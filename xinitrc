#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

setxkbmap gb -variant colemak
# xmodmap ~/.Xmodmap

feh --bg-scale /usr/share/backgrounds/Foggy_Forest_by_Jake_Stewart.jpg 
redshift -l 51.38:-2.36 &

exec i3 > /tmp/i3.log 2>&1
