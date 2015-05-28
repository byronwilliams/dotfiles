#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

setxkbmap gb -variant colemak
# xmodmap ~/.Xmodmap

redshift -l manual 51.38:-2.36 &

exec i3 > /tmp/i3.log 2>&1
