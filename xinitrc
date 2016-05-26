#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

sudo iw reg set GB

setxkbmap gb -variant colemak
# xmodmap ~/.Xmodmap
#sudo iw reg set GB
#feh --bg-scale /usr/share/backgrounds/Foggy_Forest_by_Jake_Stewart.jpg 
#xsetroot -solid "#333333"
#redshift &

awesome

#exec i3 > /tmp/i3.log 2>&1
