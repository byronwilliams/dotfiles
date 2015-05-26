#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

setxkbmap gb -variant colemak
# xmodmap ~/.Xmodmap

exec i3 > /tmp/i3.log 2>&1
